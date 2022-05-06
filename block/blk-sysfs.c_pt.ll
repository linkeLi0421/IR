; ModuleID = '/llk/IR/block/blk-sysfs.c_pt.bc'
source_filename = "../block/blk-sysfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sysfs_ops = type { ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.queue_sysfs_entry = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type {}
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.elevator_queue = type { ptr, ptr, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.hlist_head = type { ptr }
%struct.blk_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.rq_qos = type { ptr, ptr, i32, ptr, ptr }

@queue_sysfs_ops = internal constant %struct.sysfs_ops { ptr @queue_attr_show, ptr @queue_attr_store }, align 4
@blk_queue_ktype = dso_local local_unnamed_addr global %struct.kobj_type { ptr @blk_release_queue, ptr @queue_sysfs_ops, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"queue\00", align 1
@queue_attr_group = internal global %struct.attribute_group { ptr null, ptr @queue_attr_visible, ptr null, ptr @queue_attrs, ptr null }, align 4
@blk_debugfs_root = external dso_local local_unnamed_addr global ptr, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"block/blk-sysfs.c\00", align 1
@blk_queue_ida = external dso_local global %struct.ida, align 4
@blk_requestq_srcu_cachep = external dso_local local_unnamed_addr global ptr, align 4
@blk_requestq_cachep = external dso_local local_unnamed_addr global ptr, align 4
@queue_attrs = internal global [42 x ptr] [ptr @queue_requests_entry, ptr @queue_ra_entry, ptr @queue_max_hw_sectors_entry, ptr @queue_max_sectors_entry, ptr @queue_max_segments_entry, ptr @queue_max_discard_segments_entry, ptr @queue_max_integrity_segments_entry, ptr @queue_max_segment_size_entry, ptr @elv_iosched_entry, ptr @queue_hw_sector_size_entry, ptr @queue_logical_block_size_entry, ptr @queue_physical_block_size_entry, ptr @queue_chunk_sectors_entry, ptr @queue_io_min_entry, ptr @queue_io_opt_entry, ptr @queue_discard_granularity_entry, ptr @queue_discard_max_entry, ptr @queue_discard_max_hw_entry, ptr @queue_discard_zeroes_data_entry, ptr @queue_write_same_max_entry, ptr @queue_write_zeroes_max_entry, ptr @queue_zone_append_max_entry, ptr @queue_zone_write_granularity_entry, ptr @queue_nonrot_entry, ptr @queue_zoned_entry, ptr @queue_nr_zones_entry, ptr @queue_max_open_zones_entry, ptr @queue_max_active_zones_entry, ptr @queue_nomerges_entry, ptr @queue_rq_affinity_entry, ptr @queue_iostats_entry, ptr @queue_stable_writes_entry, ptr @queue_random_entry, ptr @queue_poll_entry, ptr @queue_wc_entry, ptr @queue_fua_entry, ptr @queue_dax_entry, ptr @queue_wb_lat_entry, ptr @queue_poll_delay_entry, ptr @queue_io_timeout_entry, ptr @queue_virt_boundary_mask_entry, ptr null], align 4
@queue_io_timeout_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.3, i16 420 }, ptr @queue_io_timeout_show, ptr @queue_io_timeout_store }, align 4
@queue_max_open_zones_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.5, i16 292 }, ptr @queue_max_open_zones_show, ptr null }, align 4
@queue_max_active_zones_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.7, i16 292 }, ptr @queue_max_active_zones_show, ptr null }, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"io_timeout\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"max_open_zones\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"max_active_zones\00", align 1
@queue_requests_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.8, i16 420 }, ptr @queue_requests_show, ptr @queue_requests_store }, align 4
@queue_ra_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.9, i16 420 }, ptr @queue_ra_show, ptr @queue_ra_store }, align 4
@queue_max_hw_sectors_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.10, i16 292 }, ptr @queue_max_hw_sectors_show, ptr null }, align 4
@queue_max_sectors_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.11, i16 420 }, ptr @queue_max_sectors_show, ptr @queue_max_sectors_store }, align 4
@queue_max_segments_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.12, i16 292 }, ptr @queue_max_segments_show, ptr null }, align 4
@queue_max_discard_segments_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.13, i16 292 }, ptr @queue_max_discard_segments_show, ptr null }, align 4
@queue_max_integrity_segments_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.14, i16 292 }, ptr @queue_max_integrity_segments_show, ptr null }, align 4
@queue_max_segment_size_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.15, i16 292 }, ptr @queue_max_segment_size_show, ptr null }, align 4
@elv_iosched_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.16, i16 420 }, ptr @elv_iosched_show, ptr @elv_iosched_store }, align 4
@queue_hw_sector_size_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.17, i16 292 }, ptr @queue_logical_block_size_show, ptr null }, align 4
@queue_logical_block_size_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.18, i16 292 }, ptr @queue_logical_block_size_show, ptr null }, align 4
@queue_physical_block_size_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.19, i16 292 }, ptr @queue_physical_block_size_show, ptr null }, align 4
@queue_chunk_sectors_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.20, i16 292 }, ptr @queue_chunk_sectors_show, ptr null }, align 4
@queue_io_min_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.21, i16 292 }, ptr @queue_io_min_show, ptr null }, align 4
@queue_io_opt_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.22, i16 292 }, ptr @queue_io_opt_show, ptr null }, align 4
@queue_discard_granularity_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.23, i16 292 }, ptr @queue_discard_granularity_show, ptr null }, align 4
@queue_discard_max_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.24, i16 420 }, ptr @queue_discard_max_show, ptr @queue_discard_max_store }, align 4
@queue_discard_max_hw_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.26, i16 292 }, ptr @queue_discard_max_hw_show, ptr null }, align 4
@queue_discard_zeroes_data_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.27, i16 292 }, ptr @queue_discard_zeroes_data_show, ptr null }, align 4
@queue_write_same_max_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.28, i16 292 }, ptr @queue_write_same_max_show, ptr null }, align 4
@queue_write_zeroes_max_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.29, i16 292 }, ptr @queue_write_zeroes_max_show, ptr null }, align 4
@queue_zone_append_max_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.30, i16 292 }, ptr @queue_zone_append_max_show, ptr null }, align 4
@queue_zone_write_granularity_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.31, i16 292 }, ptr @queue_zone_write_granularity_show, ptr null }, align 4
@queue_nonrot_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.32, i16 420 }, ptr @queue_nonrot_show, ptr @queue_nonrot_store }, align 4
@queue_zoned_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.33, i16 292 }, ptr @queue_zoned_show, ptr null }, align 4
@queue_nr_zones_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.37, i16 292 }, ptr @queue_nr_zones_show, ptr null }, align 4
@queue_nomerges_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.38, i16 420 }, ptr @queue_nomerges_show, ptr @queue_nomerges_store }, align 4
@queue_rq_affinity_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.39, i16 420 }, ptr @queue_rq_affinity_show, ptr @queue_rq_affinity_store }, align 4
@queue_iostats_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.40, i16 420 }, ptr @queue_iostats_show, ptr @queue_iostats_store }, align 4
@queue_stable_writes_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.41, i16 420 }, ptr @queue_stable_writes_show, ptr @queue_stable_writes_store }, align 4
@queue_random_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.42, i16 420 }, ptr @queue_random_show, ptr @queue_random_store }, align 4
@queue_poll_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.43, i16 420 }, ptr @queue_poll_show, ptr @queue_poll_store }, align 4
@queue_wc_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.47, i16 420 }, ptr @queue_wc_show, ptr @queue_wc_store }, align 4
@queue_fua_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.53, i16 292 }, ptr @queue_fua_show, ptr null }, align 4
@queue_dax_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.54, i16 292 }, ptr @queue_dax_show, ptr null }, align 4
@queue_wb_lat_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.55, i16 420 }, ptr @queue_wb_lat_show, ptr @queue_wb_lat_store }, align 4
@queue_poll_delay_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.56, i16 420 }, ptr @queue_poll_delay_show, ptr @queue_poll_delay_store }, align 4
@queue_virt_boundary_mask_entry = internal global %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.58, i16 292 }, ptr @queue_virt_boundary_mask_show, ptr null }, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"nr_requests\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"read_ahead_kb\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"max_hw_sectors_kb\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"max_sectors_kb\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"max_segments\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"max_discard_segments\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"max_integrity_segments\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"max_segment_size\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"scheduler\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"hw_sector_size\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"logical_block_size\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"physical_block_size\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"chunk_sectors\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"minimum_io_size\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"optimal_io_size\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"discard_granularity\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"discard_max_bytes\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"discard_max_hw_bytes\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"discard_zeroes_data\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"write_same_max_bytes\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"write_zeroes_max_bytes\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"zone_append_max_bytes\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"zone_write_granularity\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"rotational\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"zoned\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"none\0A\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"nr_zones\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"nomerges\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"rq_affinity\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"iostats\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"stable_writes\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"add_random\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"io_poll\00", align 1
@queue_poll_store._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.queue_poll_store = private unnamed_addr constant [17 x i8] c"queue_poll_store\00", align 1
@.str.44 = private unnamed_addr constant [45 x i8] c"\016writes to the poll attribute are ignored.\0A\00", align 1
@queue_poll_store._rs.45 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.46 = private unnamed_addr constant [50 x i8] c"\016please use driver specific parameters instead.\0A\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"write_cache\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"write back\0A\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"write through\0A\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"write back\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"write through\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"fua\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"dax\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"wbt_lat_usec\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"io_poll_delay\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"virt_boundary_mask\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @blk_release_queue(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -68
  %3 = getelementptr i8, ptr %0, i32 72
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 68
  %8 = load ptr, ptr %7, align 8
  tail call void @blk_stat_remove_callback(ptr noundef %2, ptr noundef %8) #12
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr i8, ptr %0, i32 68
  %11 = load ptr, ptr %10, align 8
  tail call void @blk_stat_free_callback(ptr noundef %11) #12
  %12 = getelementptr i8, ptr %0, i32 -64
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  tail call void @elevator_exit(ptr noundef %2) #12
  br label %16

16:                                               ; preds = %15, %9
  %17 = getelementptr i8, ptr %0, i32 -52
  %18 = load ptr, ptr %17, align 8
  tail call void @blk_free_queue_stats(ptr noundef %18) #12
  %19 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %19) #12
  %20 = getelementptr i8, ptr %0, i32 -44
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  tail call void @blk_mq_release(ptr noundef %2) #12
  br label %24

24:                                               ; preds = %23, %16
  %25 = getelementptr i8, ptr %0, i32 236
  tail call void @mutex_lock(ptr noundef %25) #12
  %26 = getelementptr i8, ptr %0, i32 564
  %27 = load ptr, ptr %26, align 8
  tail call void @debugfs_remove(ptr noundef %27) #12
  tail call void @mutex_unlock(ptr noundef %25) #12
  %28 = load ptr, ptr %20, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  tail call void @blk_mq_debugfs_unregister(ptr noundef %2) #12
  br label %31

31:                                               ; preds = %30, %24
  %32 = getelementptr i8, ptr %0, i32 428
  tail call void @bioset_exit(ptr noundef %32) #12
  %33 = getelementptr i8, ptr %0, i32 -20
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %34, 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %31
  %38 = getelementptr i8, ptr %0, i32 624
  tail call void @cleanup_srcu_struct(ptr noundef %38) #12
  br label %39

39:                                               ; preds = %37, %31
  %40 = getelementptr i8, ptr %0, i32 -12
  %41 = load i32, ptr %40, align 8
  tail call void @ida_free(ptr noundef nonnull @blk_queue_ida, i32 noundef %41) #12
  %42 = getelementptr i8, ptr %0, i32 372
  tail call void @call_rcu(ptr noundef %42, ptr noundef nonnull @blk_free_queue_rcu) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @blk_register_queue(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 10
  %5 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 41
  tail call void @mutex_lock(ptr noundef %7) #12
  %8 = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 16
  %9 = tail call ptr @kobject_get(ptr noundef %4) #12
  %10 = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef %8, ptr noundef %9, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #12
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %48, label %12

12:                                               ; preds = %1
  %13 = tail call i32 @sysfs_create_group(ptr noundef %8, ptr noundef nonnull @queue_attr_group) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @kobject_del(ptr noundef %8) #12
  tail call void @kobject_put(ptr noundef %4) #12
  br label %48

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 35
  tail call void @mutex_lock(ptr noundef %17) #12
  %18 = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 16, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr @blk_debugfs_root, align 4
  %22 = tail call ptr @debugfs_create_dir(ptr noundef %20, ptr noundef %21) #12
  %23 = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 52
  store ptr %22, ptr %23, align 8
  tail call void @mutex_unlock(ptr noundef %17) #12
  %24 = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 5
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %16
  %28 = tail call i32 @__blk_mq_register_dev(ptr noundef %4, ptr noundef %6) #12
  tail call void @blk_mq_debugfs_register(ptr noundef %6) #12
  br label %29

29:                                               ; preds = %27, %16
  %30 = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 40
  tail call void @mutex_lock(ptr noundef %30) #12
  %31 = tail call i32 @disk_register_independent_access_ranges(ptr noundef %0, ptr noundef null) #12
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = tail call i32 @elv_register_queue(ptr noundef %6, i1 noundef zeroext false) #12
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %37, %33
  tail call void @blk_queue_flag_set(i32 noundef 22, ptr noundef %6) #12
  %41 = tail call i32 @kobject_uevent(ptr noundef %8, i32 noundef 0) #12
  %42 = load ptr, ptr %34, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.elevator_queue, ptr %42, i32 0, i32 2
  %46 = tail call i32 @kobject_uevent(ptr noundef %45, i32 noundef 0) #12
  br label %47

47:                                               ; preds = %44, %40
  tail call void @mutex_unlock(ptr noundef %30) #12
  br label %48

48:                                               ; preds = %47, %15, %1
  %49 = phi i32 [ %10, %1 ], [ %13, %15 ], [ 0, %47 ]
  tail call void @mutex_unlock(ptr noundef %7) #12
  %50 = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 11
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %51, 16384
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  tail call void @blk_queue_flag_set(i32 noundef 14, ptr noundef %6) #12
  %55 = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 2
  tail call void @percpu_ref_switch_to_percpu(ptr noundef %55) #12
  br label %58

56:                                               ; preds = %37, %29
  %57 = phi i32 [ %31, %29 ], [ %38, %37 ]
  tail call void @disk_unregister_independent_access_ranges(ptr noundef %0) #12
  tail call void @mutex_unlock(ptr noundef %30) #12
  tail call void @mutex_unlock(ptr noundef %7) #12
  tail call void @kobject_del(ptr noundef %8) #12
  tail call void @kobject_put(ptr noundef %4) #12
  br label %58

58:                                               ; preds = %56, %54, %48
  %59 = phi i32 [ %57, %56 ], [ %49, %54 ], [ %49, %48 ]
  ret i32 %59
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_add(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__blk_mq_register_dev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_debugfs_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @disk_register_independent_access_ranges(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @elv_register_queue(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_set(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_ref_switch_to_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disk_unregister_independent_access_ranges(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_unregister_queue(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 934, i32 noundef 9, ptr noundef null) #12
  br label %32

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 11
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 4194304
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 40
  tail call void @mutex_lock(ptr noundef %12) #12
  tail call void @blk_queue_flag_clear(i32 noundef 22, ptr noundef nonnull %3) #12
  tail call void @mutex_unlock(ptr noundef %12) #12
  %13 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 41
  tail call void @mutex_lock(ptr noundef %13) #12
  %14 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 5
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.block_device, ptr %19, i32 0, i32 10
  tail call void @blk_mq_unregister_dev(ptr noundef %20, ptr noundef nonnull %3) #12
  br label %21

21:                                               ; preds = %17, %11
  %22 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 16
  %23 = tail call i32 @kobject_uevent(ptr noundef %22, i32 noundef 1) #12
  tail call void @kobject_del(ptr noundef %22) #12
  tail call void @mutex_lock(ptr noundef %12) #12
  %24 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  tail call void @elv_unregister_queue(ptr noundef nonnull %3) #12
  br label %28

28:                                               ; preds = %27, %21
  tail call void @disk_unregister_independent_access_ranges(ptr noundef %0) #12
  tail call void @mutex_unlock(ptr noundef %12) #12
  tail call void @mutex_unlock(ptr noundef %13) #12
  %29 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 7
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.block_device, ptr %30, i32 0, i32 10
  tail call void @kobject_put(ptr noundef %31) #12
  br label %32

32:                                               ; preds = %28, %6, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_clear(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unregister_dev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @elv_unregister_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_stat_remove_callback(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_stat_free_callback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_free_queue_stats(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_debugfs_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bioset_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cleanup_srcu_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @blk_free_queue_rcu(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -440
  %3 = getelementptr i8, ptr %0, i32 -392
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  %7 = load ptr, ptr @blk_requestq_srcu_cachep, align 4
  %8 = load ptr, ptr @blk_requestq_cachep, align 4
  %9 = select i1 %6, ptr %8, ptr %7
  tail call void @kmem_cache_free(ptr noundef %9, ptr noundef %2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @elevator_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_attr_show(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.queue_sysfs_entry, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -68
  %9 = getelementptr i8, ptr %0, i32 316
  tail call void @mutex_lock(ptr noundef %9) #12
  %10 = load ptr, ptr %4, align 4
  %11 = tail call i32 %10(ptr noundef %8, ptr noundef %2) #12
  tail call void @mutex_unlock(ptr noundef %9) #12
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi i32 [ %11, %7 ], [ -5, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_attr_store(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.queue_sysfs_entry, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %0, i32 -68
  %10 = getelementptr i8, ptr %0, i32 316
  tail call void @mutex_lock(ptr noundef %10) #12
  %11 = load ptr, ptr %5, align 4
  %12 = tail call i32 %11(ptr noundef %9, ptr noundef %2, i32 noundef %3) #12
  tail call void @mutex_unlock(ptr noundef %10) #12
  br label %13

13:                                               ; preds = %8, %4
  %14 = phi i32 [ %12, %8 ], [ -5, %4 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i16 @queue_attr_visible(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) #3 {
  %4 = icmp eq ptr %1, @queue_io_timeout_entry
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 -44
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.blk_mq_ops, ptr %7, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %9, %3
  %14 = icmp eq ptr %1, @queue_max_open_zones_entry
  %15 = icmp eq ptr %1, @queue_max_active_zones_entry
  %16 = or i1 %14, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %19 = load i16, ptr %18, align 4
  br label %20

20:                                               ; preds = %17, %13, %9, %5
  %21 = phi i16 [ %19, %17 ], [ 0, %9 ], [ 0, %5 ], [ 0, %13 ]
  ret i16 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_io_timeout_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 23
  %4 = load i32, ptr %3, align 8
  %5 = tail call i32 @jiffies_to_msecs(i32 noundef %4) #12
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_io_timeout_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %4) #12
  %6 = icmp ne i32 %5, 0
  %7 = load i32, ptr %4, align 4
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = call i32 @__msecs_to_jiffies(i32 noundef %7) #12
  call void @blk_queue_rq_timeout(ptr noundef %0, i32 noundef %11) #12
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi i32 [ %2, %10 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %13
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_rq_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_max_open_zones_show(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef 0) #12
  ret i32 %3
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_max_active_zones_show(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef 0) #12
  ret i32 %3
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_requests_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 20
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %4) #12
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_requests_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !9
  %9 = call i32 @_kstrtoul(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %4) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %20

12:                                               ; preds = %8
  %13 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %14 = icmp slt i32 %2, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = call i32 @llvm.umax.i32(i32 %13, i32 4)
  %17 = call i32 @blk_mq_update_nr_requests(ptr noundef %0, i32 noundef %16) #12
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 %2, i32 %17
  br label %20

20:                                               ; preds = %15, %12, %11, %3
  %21 = phi i32 [ -22, %3 ], [ %2, %12 ], [ %19, %15 ], [ -22, %11 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_update_nr_requests(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_ra_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.backing_dev_info, ptr %8, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 %10, 2
  %12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %11) #12
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i32 [ %12, %6 ], [ -22, %2 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_ra_store(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !9
  %9 = call i32 @_kstrtoul(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %4) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %21

12:                                               ; preds = %8
  %13 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %14 = icmp slt i32 %2, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = lshr i32 %13, 2
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds %struct.gendisk, ptr %17, i32 0, i32 15
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.backing_dev_info, ptr %19, i32 0, i32 3
  store i32 %16, ptr %20, align 4
  br label %21

21:                                               ; preds = %15, %12, %11, %3
  %22 = phi i32 [ %2, %15 ], [ -22, %3 ], [ %2, %12 ], [ -22, %11 ]
  ret i32 %22
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_max_hw_sectors_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 1
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %5) #12
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_max_sectors_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 1
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %5) #12
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_max_sectors_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %6, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !9
  %8 = call i32 @_kstrtoul(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %4) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %41

11:                                               ; preds = %3
  %12 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %13 = icmp slt i32 %2, 0
  br i1 %13, label %41, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = lshr i32 %16, 1
  %18 = icmp ult i32 %6, 2
  %19 = icmp ult i32 %16, 2
  %20 = call i32 @llvm.umin.i32(i32 %7, i32 %17)
  %21 = select i1 %19, i32 %7, i32 %20
  %22 = select i1 %18, i32 %17, i32 %21
  %23 = icmp ugt i32 %12, %22
  %24 = icmp ult i32 %12, 4
  %25 = or i1 %24, %23
  br i1 %25, label %41, label %26

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 14
  call void @_raw_spin_lock_irq(ptr noundef %27) #12
  %28 = shl i32 %12, 1
  %29 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 6
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 15
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %26
  %34 = lshr i32 %12, 2
  %35 = getelementptr inbounds %struct.gendisk, ptr %31, i32 0, i32 15
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.backing_dev_info, ptr %36, i32 0, i32 4
  store i32 %34, ptr %37, align 8
  br label %38

38:                                               ; preds = %33, %26
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %39 = load i16, ptr %27, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr %27, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  br label %41

41:                                               ; preds = %38, %14, %11, %10
  %42 = phi i32 [ %2, %38 ], [ %2, %11 ], [ -22, %14 ], [ -22, %10 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_max_segments_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 21
  %4 = load i16, ptr %3, align 4
  %5 = zext i16 %4 to i32
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %5) #12
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_max_discard_segments_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 23
  %4 = load i16, ptr %3, align 4
  %5 = zext i16 %4 to i32
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %5) #12
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_max_integrity_segments_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 22
  %4 = load i16, ptr %3, align 2
  %5 = zext i16 %4 to i32
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %5) #12
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_max_segment_size_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %4) #12
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @elv_iosched_show(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @elv_iosched_store(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_logical_block_size_show(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 9
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 512, i32 %6
  br label %9

9:                                                ; preds = %4, %2
  %10 = phi i32 [ 512, %2 ], [ %8, %4 ]
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %10) #12
  ret i32 %11
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_physical_block_size_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 8
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %4) #12
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_chunk_sectors_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %4) #12
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_io_min_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 11
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %4) #12
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_io_opt_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 12
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %4) #12
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_discard_granularity_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 18
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %4) #12
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_discard_max_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 13
  %4 = load i32, ptr %3, align 4
  %5 = zext i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 9
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.25, i64 noundef %6)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_discard_max_store(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = call i32 @_kstrtoul(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %4) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %23

8:                                                ; preds = %3
  %9 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %10 = icmp slt i32 %2, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 18
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -1
  %15 = and i32 %14, %9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = lshr i32 %9, 9
  %19 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 14
  %20 = load i32, ptr %19, align 4
  %21 = call i32 @llvm.umin.i32(i32 %18, i32 %20)
  %22 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 13
  store i32 %21, ptr %22, align 4
  br label %23

23:                                               ; preds = %17, %11, %8, %7
  %24 = phi i32 [ %2, %17 ], [ %2, %8 ], [ -22, %11 ], [ -22, %7 ]
  ret i32 %24
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_discard_max_hw_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 14
  %4 = load i32, ptr %3, align 4
  %5 = zext i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 9
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.25, i64 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_discard_zeroes_data_show(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef 0) #12
  ret i32 %3
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_write_same_max_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 15
  %4 = load i32, ptr %3, align 4
  %5 = zext i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 9
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.25, i64 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_write_zeroes_max_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 16
  %4 = load i32, ptr %3, align 4
  %5 = zext i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 9
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.25, i64 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_zone_append_max_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 17
  %4 = load i32, ptr %3, align 4
  %5 = zext i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 9
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.25, i64 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_zone_write_granularity_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 20
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %4) #12
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_nonrot_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 11
  %4 = load volatile i32, ptr %3, align 4
  %5 = lshr i32 %4, 6
  %6 = and i32 %5, 1
  %7 = xor i32 %6, 1
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %7) #12
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_nonrot_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = call i32 @_kstrtoul(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %4) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %15

8:                                                ; preds = %3
  %9 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %10 = icmp slt i32 %2, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = icmp eq i32 %9, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  call void @blk_queue_flag_set(i32 noundef 6, ptr noundef %0) #12
  br label %15

14:                                               ; preds = %11
  call void @blk_queue_flag_clear(i32 noundef 6, ptr noundef %0) #12
  br label %15

15:                                               ; preds = %14, %13, %8, %7
  %16 = phi i32 [ -22, %7 ], [ %2, %13 ], [ %2, %14 ], [ %2, %8 ]
  ret i32 %16
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @queue_zoned_show(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #6 {
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %1, ptr noundef nonnull align 1 dereferenceable(6) @.str.36, i32 6, i1 false)
  ret i32 5
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_nr_zones_show(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef 0) #12
  ret i32 %3
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_nomerges_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 11
  %4 = load volatile i32, ptr %3, align 4
  %5 = lshr i32 %4, 2
  %6 = and i32 %5, 2
  %7 = load volatile i32, ptr %3, align 4
  %8 = lshr i32 %7, 9
  %9 = and i32 %8, 1
  %10 = or i32 %9, %6
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %10) #12
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_nomerges_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = call i32 @_kstrtoul(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %4) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %14

8:                                                ; preds = %3
  %9 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %10 = icmp slt i32 %2, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  call void @blk_queue_flag_clear(i32 noundef 3, ptr noundef %0) #12
  call void @blk_queue_flag_clear(i32 noundef 9, ptr noundef %0) #12
  switch i32 %9, label %13 [
    i32 2, label %12
    i32 0, label %14
  ]

12:                                               ; preds = %11
  call void @blk_queue_flag_set(i32 noundef 3, ptr noundef %0) #12
  br label %14

13:                                               ; preds = %11
  call void @blk_queue_flag_set(i32 noundef 9, ptr noundef %0) #12
  br label %14

14:                                               ; preds = %13, %12, %11, %8, %7
  %15 = phi i32 [ -22, %7 ], [ %2, %12 ], [ %2, %13 ], [ %2, %11 ], [ %2, %8 ]
  ret i32 %15
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_rq_affinity_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 11
  %4 = load volatile i32, ptr %3, align 4
  %5 = load volatile i32, ptr %3, align 4
  %6 = lshr i32 %4, 4
  %7 = and i32 %6, 1
  %8 = lshr i32 %5, 12
  %9 = and i32 %8, 1
  %10 = shl nuw nsw i32 %7, %9
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %10) #12
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_rq_affinity_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = call i32 @_kstrtoul(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %4) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %15

8:                                                ; preds = %3
  %9 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %10 = icmp slt i32 %2, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  switch i32 %9, label %15 [
    i32 2, label %12
    i32 1, label %13
    i32 0, label %14
  ]

12:                                               ; preds = %11
  call void @blk_queue_flag_set(i32 noundef 4, ptr noundef %0) #12
  call void @blk_queue_flag_set(i32 noundef 12, ptr noundef %0) #12
  br label %15

13:                                               ; preds = %11
  call void @blk_queue_flag_set(i32 noundef 4, ptr noundef %0) #12
  call void @blk_queue_flag_clear(i32 noundef 12, ptr noundef %0) #12
  br label %15

14:                                               ; preds = %11
  call void @blk_queue_flag_clear(i32 noundef 4, ptr noundef %0) #12
  call void @blk_queue_flag_clear(i32 noundef 12, ptr noundef %0) #12
  br label %15

15:                                               ; preds = %14, %13, %12, %11, %8, %7
  %16 = phi i32 [ -22, %7 ], [ %2, %12 ], [ %2, %14 ], [ %2, %13 ], [ %2, %11 ], [ %2, %8 ]
  ret i32 %16
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_iostats_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 11
  %4 = load volatile i32, ptr %3, align 4
  %5 = lshr i32 %4, 7
  %6 = and i32 %5, 1
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %6) #12
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_iostats_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = call i32 @_kstrtoul(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %4) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %15

8:                                                ; preds = %3
  %9 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %10 = icmp slt i32 %2, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = icmp eq i32 %9, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  call void @blk_queue_flag_set(i32 noundef 7, ptr noundef %0) #12
  br label %15

14:                                               ; preds = %11
  call void @blk_queue_flag_clear(i32 noundef 7, ptr noundef %0) #12
  br label %15

15:                                               ; preds = %14, %13, %8, %7
  %16 = phi i32 [ -22, %7 ], [ %2, %13 ], [ %2, %14 ], [ %2, %8 ]
  ret i32 %16
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_stable_writes_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 11
  %4 = load volatile i32, ptr %3, align 4
  %5 = lshr i32 %4, 15
  %6 = and i32 %5, 1
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %6) #12
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_stable_writes_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = call i32 @_kstrtoul(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %4) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %15

8:                                                ; preds = %3
  %9 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %10 = icmp slt i32 %2, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = icmp eq i32 %9, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  call void @blk_queue_flag_set(i32 noundef 15, ptr noundef %0) #12
  br label %15

14:                                               ; preds = %11
  call void @blk_queue_flag_clear(i32 noundef 15, ptr noundef %0) #12
  br label %15

15:                                               ; preds = %14, %13, %8, %7
  %16 = phi i32 [ -22, %7 ], [ %2, %13 ], [ %2, %14 ], [ %2, %8 ]
  ret i32 %16
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_random_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 11
  %4 = load volatile i32, ptr %3, align 4
  %5 = lshr i32 %4, 10
  %6 = and i32 %5, 1
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %6) #12
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_random_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = call i32 @_kstrtoul(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %4) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %15

8:                                                ; preds = %3
  %9 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %10 = icmp slt i32 %2, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = icmp eq i32 %9, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  call void @blk_queue_flag_set(i32 noundef 10, ptr noundef %0) #12
  br label %15

14:                                               ; preds = %11
  call void @blk_queue_flag_clear(i32 noundef 10, ptr noundef %0) #12
  br label %15

15:                                               ; preds = %14, %13, %8, %7
  %16 = phi i32 [ -22, %7 ], [ %2, %13 ], [ %2, %14 ], [ %2, %8 ]
  ret i32 %16
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_poll_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 11
  %4 = load volatile i32, ptr %3, align 4
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 1
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %6) #12
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_poll_store(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 11
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 65536
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @___ratelimit(ptr noundef nonnull @queue_poll_store._rs, ptr noundef nonnull @__func__.queue_poll_store) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #13
  br label %13

13:                                               ; preds = %11, %8
  %14 = tail call i32 @___ratelimit(ptr noundef nonnull @queue_poll_store._rs.45, ptr noundef nonnull @__func__.queue_poll_store) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #13
  br label %18

18:                                               ; preds = %16, %13, %3
  %19 = phi i32 [ -22, %3 ], [ %2, %16 ], [ %2, %13 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @queue_wc_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 11
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 131072
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %1, ptr noundef nonnull align 1 dereferenceable(12) @.str.48, i32 12, i1 false)
  br label %9

8:                                                ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(15) %1, ptr noundef nonnull align 1 dereferenceable(15) @.str.49, i32 15, i1 false)
  br label %9

9:                                                ; preds = %8, %7
  %10 = phi i32 [ 11, %7 ], [ 14, %8 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_wc_store(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull dereferenceable(11) @.str.50, i32 noundef 10)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull dereferenceable(14) @.str.51, i32 noundef 13)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull dereferenceable(5) @.str.52, i32 noundef 4)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %14

12:                                               ; preds = %3
  tail call void @blk_queue_flag_set(i32 noundef 17, ptr noundef %0) #12
  br label %14

13:                                               ; preds = %9, %6
  tail call void @blk_queue_flag_clear(i32 noundef 17, ptr noundef %0) #12
  br label %14

14:                                               ; preds = %13, %12, %9
  %15 = phi i32 [ %2, %13 ], [ %2, %12 ], [ -22, %9 ]
  ret i32 %15
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_fua_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 11
  %4 = load volatile i32, ptr %3, align 4
  %5 = lshr i32 %4, 18
  %6 = and i32 %5, 1
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_dax_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 11
  %4 = load volatile i32, ptr %3, align 4
  %5 = lshr i32 %4, 19
  %6 = and i32 %5, 1
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %6) #12
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_wb_lat_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %11, %2
  %7 = phi ptr [ %13, %11 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.rq_qos, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.rq_qos, ptr %7, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %6

15:                                               ; preds = %6
  %16 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 0, i32 0) #14, !srcloc !15
  %17 = extractvalue { i64, i32 } %16, 0
  %18 = extractvalue { i64, i32 } %16, 1
  %19 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 0, i64 %17, i32 %18) #14, !srcloc !16
  %20 = extractvalue { i64, i32 } %19, 0
  %21 = lshr i64 %20, 9
  %22 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.25, i64 noundef %21)
  br label %23

23:                                               ; preds = %15, %11, %2
  %24 = phi i32 [ %22, %15 ], [ -22, %2 ], [ -22, %11 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_wb_lat_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  store i64 0, ptr %4, align 8, !annotation !9
  %5 = call i32 @kstrtoll(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %4) #12
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  br label %32

8:                                                ; preds = %3
  %9 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  %10 = icmp slt i64 %9, -1
  br i1 %10, label %32, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %32, label %15

15:                                               ; preds = %20, %11
  %16 = phi ptr [ %22, %20 ], [ %13, %11 ]
  %17 = getelementptr inbounds %struct.rq_qos, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.rq_qos, ptr %16, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %15

24:                                               ; preds = %15
  %25 = icmp eq i64 %9, -1
  br i1 %25, label %32, label %26

26:                                               ; preds = %24
  %27 = icmp sgt i64 %9, -1
  %28 = mul i64 %9, 1000
  %29 = icmp eq i64 %28, 0
  %30 = and i1 %27, %29
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  call void @blk_mq_freeze_queue(ptr noundef %0) #12
  call void @blk_mq_quiesce_queue(ptr noundef %0) #12
  call void @blk_mq_unquiesce_queue(ptr noundef %0) #12
  call void @blk_mq_unfreeze_queue(ptr noundef %0) #12
  br label %32

32:                                               ; preds = %31, %26, %24, %20, %11, %8, %7
  %33 = phi i32 [ %2, %31 ], [ -22, %8 ], [ %5, %7 ], [ -22, %11 ], [ %2, %24 ], [ %2, %26 ], [ -22, %20 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_freeze_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_quiesce_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unquiesce_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unfreeze_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoll(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_poll_delay_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 24
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, -1
  %6 = sdiv i32 %4, 1000
  %7 = select i1 %5, i32 -1, i32 %6
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.57, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_poll_delay_store(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.blk_mq_ops, ptr %6, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %8
  %13 = call i32 @kstrtoint(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %4) #12
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %12
  %16 = load i32, ptr %4, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = icmp sgt i32 %16, -1
  br i1 %19, label %20, label %25

20:                                               ; preds = %18
  %21 = mul i32 %16, 1000
  br label %22

22:                                               ; preds = %20, %15
  %23 = phi i32 [ %21, %20 ], [ -1, %15 ]
  %24 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 24
  store i32 %23, ptr %24, align 4
  br label %25

25:                                               ; preds = %22, %18, %12, %8, %3
  %26 = phi i32 [ -22, %8 ], [ -22, %3 ], [ %13, %12 ], [ -22, %18 ], [ %2, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_virt_boundary_mask_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %4) #12
  ret i32 %5
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }

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
!10 = !{i64 2148947373}
!11 = !{i64 2148943197}
!12 = !{i64 2148943272, i64 2148943299, i64 2148943346, i64 2148943368, i64 2148943396, i64 2148943416}
!13 = !{i64 328906}
!14 = !{i64 2148971517}
!15 = !{i64 863241, i64 863268, i64 863290, i64 863318}
!16 = !{i64 863649, i64 863676, i64 863709, i64 863730, i64 863757, i64 863783}
