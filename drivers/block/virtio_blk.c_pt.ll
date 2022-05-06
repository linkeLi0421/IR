; ModuleID = '/llk/IR/drivers/block/virtio_blk.c_pt.bc'
source_filename = "../drivers/block/virtio_blk.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.73 }
%union.anon.73 = type { ptr }
%struct.virtio_driver = type { %struct.device_driver, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_device_id = type { i32, i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lock_class_key = type {}
%struct.blk_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.virtio_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_blk = type { %struct.mutex, ptr, ptr, %struct.blk_mq_tag_set, %struct.work_struct, %struct.refcount_struct, i32, i32, ptr }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.virtqueue = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.lockdep_map = type {}
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
%struct.irq_affinity = type { i32, i32, i32, [4 x i32], ptr, ptr }
%struct.virtio_blk_vq = type { ptr, %struct.spinlock, [16 x i8], [40 x i8] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.blk_mq_hw_ctx = type { %struct.anon.78, %struct.delayed_work, [1 x %struct.cpumask], i32, i32, i32, ptr, ptr, ptr, ptr, %struct.sbitmap, ptr, i32, i16, i16, ptr, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, ptr, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, ptr, ptr, %struct.list_head, [16 x i8] }
%struct.anon.78 = type { %struct.spinlock, %struct.list_head, i32, [48 x i8] }
%struct.cpumask = type { [1 x i32] }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.35, ptr, i64, i64, i16, i16, i16, i16, i32, %struct.atomic_t, i32, %union.anon.36, %union.anon.37, %union.anon.38, %union.anon.43, ptr, ptr }
%union.anon.35 = type { %struct.list_head }
%union.anon.36 = type { %struct.hlist_node }
%union.anon.37 = type { %struct.rb_node }
%union.anon.38 = type { %struct.anon.42 }
%struct.anon.42 = type { i32, %struct.list_head, ptr }
%union.anon.43 = type { i64, [8 x i8] }
%struct.virtio_blk_discard_write_zeroes = type { i64, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, %union.anon.34, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%union.anon.34 = type {}
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.71, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.71 = type { %struct.atomic_t }
%struct.blk_mq_queue_data = type { ptr, i8 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
%struct.hd_geometry = type { i8, i8, i16, i32 }

@__param_str_num_request_queues = internal constant [30 x i8] c"virtio_blk.num_request_queues\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@num_request_queues = internal global i32 0, align 4
@__param_num_request_queues = internal constant %struct.kernel_param { ptr @__param_str_num_request_queues, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.73 { ptr @num_request_queues } }, section "__param", align 4
@__UNIQUE_ID_num_request_queuestype277 = internal constant [44 x i8] c"virtio_blk.parmtype=num_request_queues:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_num_request_queues278 = internal constant [154 x i8] c"virtio_blk.parm=num_request_queues:Limit the number of request queues to use for blk device. 0 for no limit. Values > nr_cpu_ids truncated to nr_cpu_ids.\00", section ".modinfo", align 1
@__param_str_queue_depth = internal constant [23 x i8] c"virtio_blk.queue_depth\00", align 1
@virtblk_queue_depth = internal global i32 0, align 4
@__param_queue_depth = internal constant %struct.kernel_param { ptr @__param_str_queue_depth, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.73 { ptr @virtblk_queue_depth } }, section "__param", align 4
@__UNIQUE_ID_queue_depthtype284 = internal constant [37 x i8] c"virtio_blk.parmtype=queue_depth:uint\00", section ".modinfo", align 1
@virtio_blk = internal global %struct.virtio_driver { %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @id_table, ptr @features, i32 11, ptr @features_legacy, i32 11, ptr null, ptr @virtblk_probe, ptr null, ptr @virtblk_remove, ptr @virtblk_config_changed, ptr @virtblk_freeze, ptr @virtblk_restore }, align 4
@major = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"virtblk\00", align 1
@virtblk_wq = internal unnamed_addr global ptr null, align 4
@__initcall__kmod_virtio_blk__291_1093_init6 = internal global ptr @init, section ".initcall6.init", align 4
@__exitcall_fini = internal global ptr @fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_description292 = internal constant [43 x i8] c"virtio_blk.description=Virtio block driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [41 x i8] c"virtio_blk.file=drivers/block/virtio_blk\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [23 x i8] c"virtio_blk.license=GPL\00", section ".modinfo", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"virtio_blk\00", align 1
@id_table = internal constant [2 x %struct.virtio_device_id] [%struct.virtio_device_id { i32 2, i32 -1 }, %struct.virtio_device_id zeroinitializer], align 4
@features = internal global [11 x i32] [i32 2, i32 1, i32 4, i32 5, i32 6, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14], align 4
@features_legacy = internal global [11 x i32] [i32 2, i32 1, i32 4, i32 5, i32 6, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14], align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"%s failure: config access disabled\0A\00", align 1
@__func__.virtblk_probe = private unnamed_addr constant [14 x i8] c"virtblk_probe\00", align 1
@vd_index_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@virtblk_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"&vblk->vdev_mutex\00", align 1
@virtio_mq_ops = internal constant %struct.blk_mq_ops { ptr @virtio_queue_rq, ptr @virtio_commit_rqs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @virtblk_request_done, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @virtblk_map_queues, ptr null }, align 4
@virtblk_probe.__key.4 = internal global %struct.lock_class_key zeroinitializer, align 1
@virtblk_fops = internal constant %struct.block_device_operations { ptr null, ptr @virtblk_open, ptr @virtblk_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @virtblk_getgeo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"virtio_blk: invalid block size: 0x%x\0A\00", align 1
@virtblk_attr_groups = internal global [2 x ptr] [ptr @virtblk_attr_group, ptr null], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"MQ advertised but zero queues reported\0A\00", align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"req.%d\00", align 1
@virtblk_setup_cmd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"drivers/block/virtio_blk.c\00", align 1
@virtblk_setup_discard_write_zeroes.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@bvec_virt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"include/linux/bvec.h\00", align 1
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [44 x i8] c"[%s] %s%llu %d-byte logical blocks (%s/%s)\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"new size: \00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@virtblk_attr_group = internal constant %struct.attribute_group { ptr null, ptr @virtblk_attrs_are_visible, ptr null, ptr @virtblk_attrs, ptr null }, align 4
@virtblk_attrs = internal global [3 x ptr] [ptr @dev_attr_serial, ptr @dev_attr_cache_type, ptr null], align 4
@dev_attr_cache_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420 }, ptr @cache_type_show, ptr @cache_type_store }, align 4
@.str.14 = private unnamed_addr constant [11 x i8] c"cache_type\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@virtblk_cache_types = internal constant [2 x ptr] [ptr @.str.16, ptr @.str.17], align 4
@.str.16 = private unnamed_addr constant [14 x i8] c"write through\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"write back\00", align 1
@dev_attr_serial = internal global %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292 }, ptr @serial_show, ptr null }, align 4
@.str.18 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"virtio-blk\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__UNIQUE_ID_num_request_queues278, ptr @__UNIQUE_ID_num_request_queuestype277, ptr @__UNIQUE_ID_queue_depthtype284, ptr @__exitcall_fini, ptr @__initcall__kmod_virtio_blk__291_1093_init6, ptr @__param_num_request_queues, ptr @__param_queue_depth, ptr @fini], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @fini() #0 section ".exit.text" {
  tail call void @unregister_virtio_driver(ptr noundef nonnull @virtio_blk) #13
  %1 = load i32, ptr @major, align 4
  tail call void @unregister_blkdev(i32 noundef %1, ptr noundef nonnull @.str) #13
  %2 = load ptr, ptr @virtblk_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_blkdev(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init() #0 section ".init.text" {
  %1 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef 0) #13
  store ptr %1, ptr @virtblk_wq, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @__register_blkdev(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef null) #13
  store i32 %4, ptr @major, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @register_virtio_driver(ptr noundef nonnull @virtio_blk) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = load i32, ptr @major, align 4
  tail call void @unregister_blkdev(i32 noundef %10, ptr noundef nonnull @.str) #13
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi i32 [ %7, %9 ], [ %4, %3 ]
  %13 = load ptr, ptr @virtblk_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %13) #13
  br label %14

14:                                               ; preds = %11, %6, %0
  %15 = phi i32 [ %12, %11 ], [ -12, %0 ], [ 0, %6 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtblk_probe(ptr noundef %0) #2 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 8
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.virtio_config_ops, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.virtblk_probe) #14
  br label %317

21:                                               ; preds = %1
  %22 = tail call i32 @ida_alloc_range(ptr noundef nonnull @vd_index_ida, i32 noundef 0, i32 noundef 65535, i32 noundef 3264) #13
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %317, label %24

24:                                               ; preds = %21
  tail call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 2) #13
  %25 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 11
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 4
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !8
  %30 = load ptr, ptr %14, align 8
  %31 = getelementptr inbounds %struct.virtio_config_ops, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  call void %32(ptr noundef %0, i32 noundef 12, ptr noundef nonnull %3, i32 noundef 4) #13
  %33 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br label %34

34:                                               ; preds = %29, %24
  %35 = phi i32 [ %33, %29 ], [ 0, %24 ]
  %36 = icmp ne i32 %35, 0
  %37 = select i1 %28, i1 %36, i1 false
  %38 = call i32 @llvm.umin.i32(i32 %35, i32 32766)
  %39 = select i1 %37, i32 %38, i32 1
  %40 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %41 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3264, i32 noundef 172) #15
  %42 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 12
  store ptr %41, ptr %42, align 8
  %43 = icmp eq ptr %41, null
  br i1 %43, label %315, label %44

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.virtio_blk, ptr %41, i32 0, i32 5
  store volatile i32 1, ptr %45, align 4
  call void @__mutex_init(ptr noundef nonnull %41, ptr noundef nonnull @.str.3, ptr noundef nonnull @virtblk_probe.__key) #13
  %46 = getelementptr inbounds %struct.virtio_blk, ptr %41, i32 0, i32 1
  store ptr %0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.virtio_blk, ptr %41, i32 0, i32 4
  store i32 -32, ptr %47, align 4
  %48 = getelementptr inbounds %struct.virtio_blk, ptr %41, i32 0, i32 4, i32 1
  store volatile ptr %48, ptr %48, align 8
  %49 = getelementptr inbounds %struct.virtio_blk, ptr %41, i32 0, i32 4, i32 1, i32 1
  store ptr %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.virtio_blk, ptr %41, i32 0, i32 4, i32 2
  store ptr @virtblk_config_changed_work, ptr %50, align 8
  %51 = call fastcc i32 @init_vq(ptr noundef nonnull %41)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %313

53:                                               ; preds = %44
  %54 = load i32, ptr @virtblk_queue_depth, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.virtio_blk, ptr %41, i32 0, i32 8
  %58 = load ptr, ptr %57, align 8
  %59 = load ptr, ptr %58, align 64
  %60 = getelementptr inbounds %struct.virtqueue, ptr %59, i32 0, i32 5
  %61 = load i32, ptr %60, align 4
  %62 = load i64, ptr %25, align 8
  %63 = trunc i64 %62 to i32
  %64 = lshr i32 %63, 28
  %65 = and i32 %64, 1
  %66 = xor i32 %65, 1
  %67 = lshr i32 %61, %66
  br label %68

68:                                               ; preds = %56, %53
  %69 = phi i32 [ %67, %56 ], [ %54, %53 ]
  %70 = getelementptr inbounds %struct.virtio_blk, ptr %41, i32 0, i32 3
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(112) %70, i8 0, i32 112, i1 false)
  %71 = getelementptr inbounds %struct.virtio_blk, ptr %41, i32 0, i32 3, i32 2
  store ptr @virtio_mq_ops, ptr %71, align 4
  %72 = getelementptr inbounds %struct.virtio_blk, ptr %41, i32 0, i32 3, i32 4
  store i32 %69, ptr %72, align 4
  %73 = getelementptr inbounds %struct.virtio_blk, ptr %41, i32 0, i32 3, i32 7
  store i32 -1, ptr %73, align 8
  %74 = getelementptr inbounds %struct.virtio_blk, ptr %41, i32 0, i32 3, i32 9
  store i32 1, ptr %74, align 8
  %75 = getelementptr inbounds %struct.virtio_blk, ptr %41, i32 0, i32 3, i32 6
  store i32 72, ptr %75, align 4
  %76 = getelementptr inbounds %struct.virtio_blk, ptr %41, i32 0, i32 3, i32 10
  store ptr %41, ptr %76, align 4
  %77 = getelementptr inbounds %struct.virtio_blk, ptr %41, i32 0, i32 7
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.virtio_blk, ptr %41, i32 0, i32 3, i32 3
  store i32 %78, ptr %79, align 8
  %80 = call i32 @blk_mq_alloc_tag_set(ptr noundef %70) #13
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %306

82:                                               ; preds = %68
  %83 = call ptr @__blk_mq_alloc_disk(ptr noundef %70, ptr noundef nonnull %41, ptr noundef nonnull @virtblk_probe.__key.4) #13
  %84 = getelementptr inbounds %struct.virtio_blk, ptr %41, i32 0, i32 2
  store ptr %83, ptr %84, align 8
  %85 = icmp ugt ptr %83, inttoptr (i32 -4096 to ptr)
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = ptrtoint ptr %83 to i32
  br label %304

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.gendisk, ptr %83, i32 0, i32 9
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.gendisk, ptr %83, i32 0, i32 3
  %92 = getelementptr %struct.gendisk, ptr %83, i32 0, i32 3, i32 2
  %93 = getelementptr %struct.gendisk, ptr %83, i32 0, i32 4
  %94 = getelementptr %struct.gendisk, ptr %83, i32 0, i32 3, i32 31
  store i8 0, ptr %94, align 1
  br label %95

95:                                               ; preds = %99, %88
  %96 = phi i32 [ %22, %88 ], [ %107, %99 ]
  %97 = phi ptr [ %94, %88 ], [ %106, %99 ]
  %98 = icmp eq ptr %97, %92
  br i1 %98, label %113, label %99

99:                                               ; preds = %95
  %100 = freeze i32 %96
  %101 = sdiv i32 %100, 26
  %102 = mul i32 %101, 26
  %103 = sub i32 %100, %102
  %104 = trunc i32 %103 to i8
  %105 = add nsw i8 %104, 97
  %106 = getelementptr i8, ptr %97, i32 -1
  store i8 %105, ptr %106, align 1
  %107 = add nsw i32 %101, -1
  %108 = icmp sgt i32 %96, 25
  br i1 %108, label %95, label %109

109:                                              ; preds = %99
  %110 = ptrtoint ptr %93 to i32
  %111 = ptrtoint ptr %106 to i32
  %112 = sub i32 %110, %111
  call void @llvm.memmove.p0.p0.i32(ptr align 1 %92, ptr align 1 %106, i32 %112, i1 false) #13
  store i16 25718, ptr %91, align 1
  br label %113

113:                                              ; preds = %109, %95
  %114 = load i32, ptr @major, align 4
  %115 = load ptr, ptr %84, align 8
  store i32 %114, ptr %115, align 8
  %116 = shl i32 %22, 4
  %117 = load ptr, ptr %84, align 8
  %118 = getelementptr inbounds %struct.gendisk, ptr %117, i32 0, i32 1
  store i32 %116, ptr %118, align 4
  %119 = load ptr, ptr %84, align 8
  %120 = getelementptr inbounds %struct.gendisk, ptr %119, i32 0, i32 2
  store i32 16, ptr %120, align 8
  %121 = load ptr, ptr %84, align 8
  %122 = getelementptr inbounds %struct.gendisk, ptr %121, i32 0, i32 10
  store ptr %41, ptr %122, align 8
  %123 = load ptr, ptr %84, align 8
  %124 = getelementptr inbounds %struct.gendisk, ptr %123, i32 0, i32 8
  store ptr @virtblk_fops, ptr %124, align 8
  %125 = getelementptr inbounds %struct.virtio_blk, ptr %41, i32 0, i32 6
  store i32 %22, ptr %125, align 8
  call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 11) #13
  %126 = load i64, ptr %25, align 8
  %127 = and i64 %126, 2048
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %113
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #13
  store i8 0, ptr %2, align 1, !annotation !8
  %130 = load ptr, ptr %14, align 8
  %131 = getelementptr inbounds %struct.virtio_config_ops, ptr %130, i32 0, i32 1
  %132 = load ptr, ptr %131, align 4
  call void %132(ptr noundef %0, i32 noundef 32, ptr noundef nonnull %2, i32 noundef 1) #13
  %133 = load i8, ptr %2, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #13
  br label %139

134:                                              ; preds = %113
  call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 9) #13
  %135 = load i64, ptr %25, align 8
  %136 = lshr i64 %135, 9
  %137 = trunc i64 %136 to i8
  %138 = and i8 %137, 1
  br label %139

139:                                              ; preds = %134, %129
  %140 = phi i8 [ %138, %134 ], [ %133, %129 ]
  %141 = load ptr, ptr %42, align 8
  %142 = getelementptr inbounds %struct.virtio_blk, ptr %141, i32 0, i32 2
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.gendisk, ptr %143, i32 0, i32 9
  %145 = load ptr, ptr %144, align 4
  %146 = icmp ne i8 %140, 0
  call void @blk_queue_write_cache(ptr noundef %145, i1 noundef zeroext %146, i1 noundef zeroext false) #13
  call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 5) #13
  %147 = load i64, ptr %25, align 8
  %148 = and i64 %147, 32
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %139
  %151 = load ptr, ptr %84, align 8
  call void @set_disk_ro(ptr noundef %151, i1 noundef zeroext true) #13
  br label %152

152:                                              ; preds = %150, %139
  %153 = trunc i32 %39 to i16
  call void @blk_queue_max_segments(ptr noundef %90, i16 noundef zeroext %153) #13
  call void @blk_queue_max_hw_sectors(ptr noundef %90, i32 noundef -1) #13
  %154 = call i32 @virtio_max_dma_size(ptr noundef %0) #13
  call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 1) #13
  %155 = load i64, ptr %25, align 8
  %156 = and i64 %155, 2
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %152
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !8
  %159 = load ptr, ptr %14, align 8
  %160 = getelementptr inbounds %struct.virtio_config_ops, ptr %159, i32 0, i32 1
  %161 = load ptr, ptr %160, align 4
  call void %161(ptr noundef %0, i32 noundef 8, ptr noundef nonnull %4, i32 noundef 4) #13
  %162 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  br label %163

163:                                              ; preds = %158, %152
  %164 = phi i32 [ %162, %158 ], [ 0, %152 ]
  %165 = call i32 @llvm.umin.i32(i32 %154, i32 %164)
  %166 = select i1 %157, i32 %154, i32 %165
  call void @blk_queue_max_segment_size(ptr noundef %90, i32 noundef %166) #13
  call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 6) #13
  %167 = load i64, ptr %25, align 8
  %168 = and i64 %167, 64
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %183, label %170

170:                                              ; preds = %163
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !8
  %171 = load ptr, ptr %14, align 8
  %172 = getelementptr inbounds %struct.virtio_config_ops, ptr %171, i32 0, i32 1
  %173 = load ptr, ptr %172, align 4
  call void %173(ptr noundef %0, i32 noundef 20, ptr noundef nonnull %5, i32 noundef 4) #13
  %174 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  %175 = add i32 %174, -512
  %176 = icmp ult i32 %175, 3585
  %177 = call i32 @llvm.ctpop.i32(i32 %174) #13, !range !9
  %178 = icmp ult i32 %177, 2
  %179 = and i1 %176, %178
  br i1 %179, label %182, label %180

180:                                              ; preds = %170
  %181 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %181, ptr noundef nonnull @.str.6, i32 noundef %174) #14
  br label %301

182:                                              ; preds = %170
  call void @blk_queue_logical_block_size(ptr noundef %90, i32 noundef %174) #13
  br label %190

183:                                              ; preds = %163
  %184 = icmp eq ptr %90, null
  br i1 %184, label %190, label %185

185:                                              ; preds = %183
  %186 = getelementptr inbounds %struct.request_queue, ptr %90, i32 0, i32 32, i32 9
  %187 = load i32, ptr %186, align 4
  %188 = icmp eq i32 %187, 0
  %189 = select i1 %188, i32 512, i32 %187
  br label %190

190:                                              ; preds = %185, %183, %182
  %191 = phi i32 [ %174, %182 ], [ 512, %183 ], [ %189, %185 ]
  call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 10) #13
  %192 = load i64, ptr %25, align 8
  %193 = and i64 %192, 1024
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %204, label %195

195:                                              ; preds = %190
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #13
  store i8 0, ptr %6, align 1, !annotation !8
  %196 = load ptr, ptr %14, align 8
  %197 = getelementptr inbounds %struct.virtio_config_ops, ptr %196, i32 0, i32 1
  %198 = load ptr, ptr %197, align 4
  call void %198(ptr noundef %0, i32 noundef 24, ptr noundef nonnull %6, i32 noundef 1) #13
  %199 = load i8, ptr %6, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %204, label %201

201:                                              ; preds = %195
  %202 = zext i8 %199 to i32
  %203 = shl i32 %191, %202
  call void @blk_queue_physical_block_size(ptr noundef %90, i32 noundef %203) #13
  br label %204

204:                                              ; preds = %201, %195, %190
  call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 10) #13
  %205 = load i64, ptr %25, align 8
  %206 = and i64 %205, 1024
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %217, label %208

208:                                              ; preds = %204
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #13
  store i8 0, ptr %7, align 1, !annotation !8
  %209 = load ptr, ptr %14, align 8
  %210 = getelementptr inbounds %struct.virtio_config_ops, ptr %209, i32 0, i32 1
  %211 = load ptr, ptr %210, align 4
  call void %211(ptr noundef %0, i32 noundef 25, ptr noundef nonnull %7, i32 noundef 1) #13
  %212 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #13
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %208
  %215 = zext i8 %212 to i32
  %216 = mul i32 %191, %215
  call void @blk_queue_alignment_offset(ptr noundef %90, i32 noundef %216) #13
  br label %217

217:                                              ; preds = %214, %208, %204
  call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 10) #13
  %218 = load i64, ptr %25, align 8
  %219 = and i64 %218, 1024
  %220 = icmp eq i64 %219, 0
  br i1 %220, label %230, label %221

221:                                              ; preds = %217
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #13
  store i16 0, ptr %8, align 2, !annotation !8
  %222 = load ptr, ptr %14, align 8
  %223 = getelementptr inbounds %struct.virtio_config_ops, ptr %222, i32 0, i32 1
  %224 = load ptr, ptr %223, align 4
  call void %224(ptr noundef %0, i32 noundef 26, ptr noundef nonnull %8, i32 noundef 2) #13
  %225 = load i16, ptr %8, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #13
  %226 = icmp eq i16 %225, 0
  br i1 %226, label %230, label %227

227:                                              ; preds = %221
  %228 = zext i16 %225 to i32
  %229 = mul i32 %191, %228
  call void @blk_queue_io_min(ptr noundef %90, i32 noundef %229) #13
  br label %230

230:                                              ; preds = %227, %221, %217
  call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 10) #13
  %231 = load i64, ptr %25, align 8
  %232 = and i64 %231, 1024
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %242, label %234

234:                                              ; preds = %230
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  store i32 0, ptr %9, align 4, !annotation !8
  %235 = load ptr, ptr %14, align 8
  %236 = getelementptr inbounds %struct.virtio_config_ops, ptr %235, i32 0, i32 1
  %237 = load ptr, ptr %236, align 4
  call void %237(ptr noundef %0, i32 noundef 28, ptr noundef nonnull %9, i32 noundef 4) #13
  %238 = load i32, ptr %9, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %242, label %240

240:                                              ; preds = %234
  %241 = mul i32 %238, %191
  call void @blk_queue_io_opt(ptr noundef %90, i32 noundef %241) #13
  br label %242

242:                                              ; preds = %240, %234, %230
  call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 13) #13
  %243 = load i64, ptr %25, align 8
  %244 = and i64 %243, 8192
  %245 = icmp eq i64 %244, 0
  br i1 %245, label %268, label %246

246:                                              ; preds = %242
  %247 = getelementptr inbounds %struct.request_queue, ptr %90, i32 0, i32 32, i32 18
  store i32 %191, ptr %247, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #13
  store i32 0, ptr %10, align 4, !annotation !8
  %248 = load ptr, ptr %14, align 8
  %249 = getelementptr inbounds %struct.virtio_config_ops, ptr %248, i32 0, i32 1
  %250 = load ptr, ptr %249, align 4
  call void %250(ptr noundef %0, i32 noundef 44, ptr noundef nonnull %10, i32 noundef 4) #13
  %251 = load i32, ptr %10, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  %252 = shl i32 %251, 9
  %253 = getelementptr inbounds %struct.request_queue, ptr %90, i32 0, i32 32, i32 19
  store i32 %252, ptr %253, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #13
  store i32 0, ptr %11, align 4, !annotation !8
  %254 = load ptr, ptr %14, align 8
  %255 = getelementptr inbounds %struct.virtio_config_ops, ptr %254, i32 0, i32 1
  %256 = load ptr, ptr %255, align 4
  call void %256(ptr noundef %0, i32 noundef 36, ptr noundef nonnull %11, i32 noundef 4) #13
  %257 = load i32, ptr %11, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #13
  %258 = icmp eq i32 %257, 0
  %259 = select i1 %258, i32 -1, i32 %257
  call void @blk_queue_max_discard_sectors(ptr noundef %90, i32 noundef %259) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #13
  store i32 0, ptr %12, align 4, !annotation !8
  %260 = load ptr, ptr %14, align 8
  %261 = getelementptr inbounds %struct.virtio_config_ops, ptr %260, i32 0, i32 1
  %262 = load ptr, ptr %261, align 4
  call void %262(ptr noundef %0, i32 noundef 40, ptr noundef nonnull %12, i32 noundef 4) #13
  %263 = load i32, ptr %12, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #13
  %264 = icmp eq i32 %263, 0
  %265 = select i1 %264, i32 %39, i32 %263
  %266 = call i32 @llvm.umin.i32(i32 %265, i32 256)
  %267 = trunc i32 %266 to i16
  call void @blk_queue_max_discard_segments(ptr noundef %90, i16 noundef zeroext %267) #13
  call void @blk_queue_flag_set(i32 noundef 8, ptr noundef %90) #13
  br label %268

268:                                              ; preds = %246, %242
  call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 14) #13
  %269 = load i64, ptr %25, align 8
  %270 = and i64 %269, 16384
  %271 = icmp eq i64 %270, 0
  br i1 %271, label %279, label %272

272:                                              ; preds = %268
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #13
  store i32 0, ptr %13, align 4, !annotation !8
  %273 = load ptr, ptr %14, align 8
  %274 = getelementptr inbounds %struct.virtio_config_ops, ptr %273, i32 0, i32 1
  %275 = load ptr, ptr %274, align 4
  call void %275(ptr noundef %0, i32 noundef 48, ptr noundef nonnull %13, i32 noundef 4) #13
  %276 = load i32, ptr %13, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #13
  %277 = icmp eq i32 %276, 0
  %278 = select i1 %277, i32 -1, i32 %276
  call void @blk_queue_max_write_zeroes_sectors(ptr noundef %90, i32 noundef %278) #13
  br label %279

279:                                              ; preds = %272, %268
  call fastcc void @virtblk_update_capacity(ptr noundef nonnull %41, i1 noundef zeroext false)
  %280 = load ptr, ptr %14, align 8
  %281 = getelementptr inbounds %struct.virtio_config_ops, ptr %280, i32 0, i32 4
  %282 = load ptr, ptr %281, align 4
  %283 = call zeroext i8 %282(ptr noundef %0) #13
  %284 = load ptr, ptr %14, align 8
  %285 = load ptr, ptr %284, align 4
  %286 = icmp eq ptr %285, null
  br i1 %286, label %288, label %287

287:                                              ; preds = %279
  call void %285(ptr noundef %0) #13
  br label %288

288:                                              ; preds = %287, %279
  %289 = and i8 %283, 4
  %290 = icmp eq i8 %289, 0
  br i1 %290, label %292, label %291, !prof !10

291:                                              ; preds = %288
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/virtio_config.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 239, 0\0A.popsection", ""() #13, !srcloc !11
  unreachable

292:                                              ; preds = %288
  %293 = load ptr, ptr %14, align 8
  %294 = getelementptr inbounds %struct.virtio_config_ops, ptr %293, i32 0, i32 5
  %295 = load ptr, ptr %294, align 4
  %296 = or i8 %283, 4
  call void %295(ptr noundef %0, i8 noundef zeroext %296) #13
  %297 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6
  %298 = load ptr, ptr %84, align 8
  %299 = call i32 @device_add_disk(ptr noundef %297, ptr noundef %298, ptr noundef nonnull @virtblk_attr_groups) #13
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %317, label %301

301:                                              ; preds = %292, %180
  %302 = phi i32 [ %299, %292 ], [ -22, %180 ]
  %303 = load ptr, ptr %84, align 8
  call void @blk_cleanup_disk(ptr noundef %303) #13
  br label %304

304:                                              ; preds = %301, %86
  %305 = phi i32 [ %87, %86 ], [ %302, %301 ]
  call void @blk_mq_free_tag_set(ptr noundef %70) #13
  br label %306

306:                                              ; preds = %304, %68
  %307 = phi i32 [ %80, %68 ], [ %305, %304 ]
  %308 = load ptr, ptr %14, align 8
  %309 = getelementptr inbounds %struct.virtio_config_ops, ptr %308, i32 0, i32 8
  %310 = load ptr, ptr %309, align 4
  call void %310(ptr noundef %0) #13
  %311 = getelementptr inbounds %struct.virtio_blk, ptr %41, i32 0, i32 8
  %312 = load ptr, ptr %311, align 8
  call void @kfree(ptr noundef %312) #13
  br label %313

313:                                              ; preds = %306, %44
  %314 = phi i32 [ %51, %44 ], [ %307, %306 ]
  call void @kfree(ptr noundef nonnull %41) #13
  br label %315

315:                                              ; preds = %313, %34
  %316 = phi i32 [ %314, %313 ], [ -12, %34 ]
  call void @ida_free(ptr noundef nonnull @vd_index_ida, i32 noundef %22) #13
  br label %317

317:                                              ; preds = %315, %292, %21, %19
  %318 = phi i32 [ -22, %19 ], [ 0, %292 ], [ %22, %21 ], [ %316, %315 ]
  ret i32 %318
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @virtblk_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.virtio_blk, ptr %3, i32 0, i32 4
  %5 = tail call zeroext i1 @flush_work(ptr noundef %4) #13
  %6 = getelementptr inbounds %struct.virtio_blk, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void @del_gendisk(ptr noundef %7) #13
  %8 = load ptr, ptr %6, align 4
  tail call void @blk_cleanup_disk(ptr noundef %8) #13
  %9 = getelementptr inbounds %struct.virtio_blk, ptr %3, i32 0, i32 3
  tail call void @blk_mq_free_tag_set(ptr noundef %9) #13
  tail call void @mutex_lock(ptr noundef %3) #13
  tail call void @virtio_reset_device(ptr noundef %0) #13
  %10 = getelementptr inbounds %struct.virtio_blk, ptr %3, i32 0, i32 1
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.virtio_config_ops, ptr %12, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  tail call void %14(ptr noundef %0) #13
  %15 = getelementptr inbounds %struct.virtio_blk, ptr %3, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  tail call void @kfree(ptr noundef %16) #13
  tail call void @mutex_unlock(ptr noundef %3) #13
  %17 = getelementptr inbounds %struct.virtio_blk, ptr %3, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #13, !srcloc !13
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #13, !srcloc !14
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = icmp sgt i32 %19, 0
  br i1 %22, label %27, label %23, !prof !10

23:                                               ; preds = %21
  tail call void @refcount_warn_saturate(ptr noundef %17, i32 noundef 3) #13
  br label %27

24:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !15
  %25 = getelementptr inbounds %struct.virtio_blk, ptr %3, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  tail call void @ida_free(ptr noundef nonnull @vd_index_ida, i32 noundef %26) #13
  tail call void @kfree(ptr noundef %3) #13
  br label %27

27:                                               ; preds = %24, %23, %21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @virtblk_config_changed(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr @virtblk_wq, align 4
  %5 = getelementptr inbounds %struct.virtio_blk, ptr %3, i32 0, i32 4
  %6 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %4, ptr noundef %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtblk_freeze(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  tail call void @virtio_reset_device(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.virtio_blk, ptr %3, i32 0, i32 4
  %5 = tail call zeroext i1 @flush_work(ptr noundef %4) #13
  %6 = getelementptr inbounds %struct.virtio_blk, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  tail call void @blk_mq_quiesce_queue(ptr noundef %9) #13
  %10 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.virtio_config_ops, ptr %11, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  tail call void %13(ptr noundef %0) #13
  %14 = getelementptr inbounds %struct.virtio_blk, ptr %3, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  tail call void @kfree(ptr noundef %15) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtblk_restore(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  %4 = tail call fastcc i32 @init_vq(ptr noundef %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.virtio_config_ops, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call zeroext i8 %10(ptr noundef %0) #13
  %12 = load ptr, ptr %7, align 8
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %6
  tail call void %13(ptr noundef %0) #13
  br label %16

16:                                               ; preds = %15, %6
  %17 = and i8 %11, 4
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19, !prof !10

19:                                               ; preds = %16
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/virtio_config.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 239, 0\0A.popsection", ""() #13, !srcloc !11
  unreachable

20:                                               ; preds = %16
  %21 = load ptr, ptr %7, align 8
  %22 = getelementptr inbounds %struct.virtio_config_ops, ptr %21, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = or i8 %11, 4
  tail call void %23(ptr noundef %0, i8 noundef zeroext %24) #13
  %25 = getelementptr inbounds %struct.virtio_blk, ptr %3, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.gendisk, ptr %26, i32 0, i32 9
  %28 = load ptr, ptr %27, align 4
  tail call void @blk_mq_unquiesce_queue(ptr noundef %28) #13
  br label %29

29:                                               ; preds = %20, %1
  ret i32 %4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @virtblk_config_changed_work(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -140
  tail call fastcc void @virtblk_update_capacity(ptr noundef %2, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @init_vq(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.irq_affinity, align 4
  %3 = alloca i16, align 2
  %4 = getelementptr inbounds %struct.virtio_blk, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i32 36, i1 false)
  tail call void @virtio_check_driver_offered_feature(ptr noundef %5, i32 noundef 12) #13
  %6 = getelementptr inbounds %struct.virtio_device, ptr %5, i32 0, i32 11
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 4096
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i16 0, ptr %3, align 2, !annotation !8
  %11 = getelementptr inbounds %struct.virtio_device, ptr %5, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.virtio_config_ops, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  call void %14(ptr noundef %5, i32 noundef 34, ptr noundef nonnull %3, i32 noundef 2) #13
  %15 = load i16, ptr %3, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.virtio_device, ptr %5, i32 0, i32 6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.7) #14
  br label %83

19:                                               ; preds = %10, %1
  %20 = phi i16 [ %15, %10 ], [ 1, %1 ]
  %21 = load i32, ptr @num_request_queues, align 4
  %22 = load i32, ptr @nr_cpu_ids, align 4
  %23 = icmp eq i32 %21, 0
  %24 = icmp eq i32 %22, 0
  %25 = call i32 @llvm.umin.i32(i32 %21, i32 %22)
  %26 = select i1 %24, i32 %21, i32 %25
  %27 = select i1 %23, i32 %22, i32 %26
  %28 = zext i16 %20 to i32
  %29 = call i32 @llvm.umin.i32(i32 %27, i32 %28)
  %30 = shl nuw nsw i32 %29, 6
  %31 = call noalias align 64 ptr @__kmalloc(i32 noundef %30, i32 noundef 3264) #16
  %32 = getelementptr inbounds %struct.virtio_blk, ptr %0, i32 0, i32 8
  store ptr %31, ptr %32, align 4
  %33 = icmp eq ptr %31, null
  br i1 %33, label %83, label %34

34:                                               ; preds = %19
  %35 = shl nuw nsw i32 %29, 2
  %36 = call noalias align 64 ptr @__kmalloc(i32 noundef %35, i32 noundef 3264) #16
  %37 = call noalias align 64 ptr @__kmalloc(i32 noundef %35, i32 noundef 3264) #16
  %38 = call noalias align 64 ptr @__kmalloc(i32 noundef %35, i32 noundef 3264) #16
  %39 = icmp ne ptr %36, null
  %40 = icmp ne ptr %37, null
  %41 = select i1 %39, i1 %40, i1 false
  %42 = icmp ne ptr %38, null
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %44, label %78

44:                                               ; preds = %34
  %45 = icmp eq i32 %29, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %46, %44
  %47 = phi i32 [ %55, %46 ], [ 0, %44 ]
  %48 = getelementptr ptr, ptr %37, i32 %47
  store ptr @virtblk_done, ptr %48, align 4
  %49 = load ptr, ptr %32, align 4
  %50 = getelementptr %struct.virtio_blk_vq, ptr %49, i32 %47, i32 2
  %51 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %50, i32 noundef 16, ptr noundef nonnull @.str.8, i32 noundef %47)
  %52 = load ptr, ptr %32, align 4
  %53 = getelementptr %struct.virtio_blk_vq, ptr %52, i32 %47, i32 2
  %54 = getelementptr ptr, ptr %36, i32 %47
  store ptr %53, ptr %54, align 4
  %55 = add nuw nsw i32 %47, 1
  %56 = icmp eq i32 %55, %29
  br i1 %56, label %57, label %46

57:                                               ; preds = %46, %44
  %58 = phi i1 [ true, %44 ], [ %45, %46 ]
  %59 = getelementptr inbounds %struct.virtio_device, ptr %5, i32 0, i32 8
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.virtio_config_ops, ptr %60, i32 0, i32 7
  %62 = load ptr, ptr %61, align 4
  %63 = call i32 %62(ptr noundef %5, i32 noundef %29, ptr noundef nonnull %38, ptr noundef nonnull %37, ptr noundef nonnull %36, ptr noundef null, ptr noundef nonnull %2) #13
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %57
  br i1 %58, label %76, label %66

66:                                               ; preds = %66, %65
  %67 = phi i32 [ %74, %66 ], [ 0, %65 ]
  %68 = load ptr, ptr %32, align 4
  %69 = getelementptr %struct.virtio_blk_vq, ptr %68, i32 %67, i32 1
  store i32 0, ptr %69, align 4
  %70 = getelementptr ptr, ptr %38, i32 %67
  %71 = load ptr, ptr %70, align 4
  %72 = load ptr, ptr %32, align 4
  %73 = getelementptr %struct.virtio_blk_vq, ptr %72, i32 %67
  store ptr %71, ptr %73, align 64
  %74 = add nuw nsw i32 %67, 1
  %75 = icmp eq i32 %74, %29
  br i1 %75, label %76, label %66

76:                                               ; preds = %66, %65
  %77 = getelementptr inbounds %struct.virtio_blk, ptr %0, i32 0, i32 7
  store i32 %29, ptr %77, align 4
  br label %78

78:                                               ; preds = %76, %57, %34
  %79 = phi i32 [ %63, %57 ], [ 0, %76 ], [ -12, %34 ]
  call void @kfree(ptr noundef %38) #13
  call void @kfree(ptr noundef %37) #13
  call void @kfree(ptr noundef %36) #13
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr %32, align 4
  call void @kfree(ptr noundef %82) #13
  br label %83

83:                                               ; preds = %81, %78, %19, %17
  %84 = phi i32 [ -22, %17 ], [ %79, %81 ], [ 0, %78 ], [ -12, %19 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #13
  ret i32 %84
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_alloc_tag_set(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__blk_mq_alloc_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_disk_ro(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_segments(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_hw_sectors(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_max_dma_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_segment_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_logical_block_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_physical_block_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_alignment_offset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_io_min(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_io_opt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_discard_sectors(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_discard_segments(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_set(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_write_zeroes_sectors(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @virtblk_update_capacity(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = alloca [10 x i8], align 1
  %4 = alloca [10 x i8], align 1
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.virtio_blk, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.virtio_blk, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %3, i8 0, i32 10, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %4, i8 0, i32 10, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store i64 0, ptr %5, align 8, !annotation !8
  %12 = getelementptr inbounds %struct.virtio_device, ptr %7, i32 0, i32 8
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.virtio_config_ops, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = tail call i32 %15(ptr noundef %7) #13
  br label %19

19:                                               ; preds = %17, %2
  %20 = phi i32 [ 0, %2 ], [ %18, %17 ]
  br label %21

21:                                               ; preds = %32, %19
  %22 = phi i32 [ %33, %32 ], [ %20, %19 ]
  %23 = load ptr, ptr %12, align 8
  %24 = getelementptr inbounds %struct.virtio_config_ops, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  call void %25(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %5, i32 noundef 8) #13
  %26 = load ptr, ptr %12, align 8
  %27 = getelementptr inbounds %struct.virtio_config_ops, ptr %26, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %21
  %31 = call i32 %28(ptr noundef %7) #13
  br label %32

32:                                               ; preds = %30, %21
  %33 = phi i32 [ %31, %30 ], [ 0, %21 ]
  %34 = icmp eq i32 %33, %22
  br i1 %34, label %35, label %21

35:                                               ; preds = %32
  %36 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  %37 = icmp eq ptr %11, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 32, i32 9
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  %42 = lshr i32 %40, 9
  %43 = select i1 %41, i32 1, i32 %42
  %44 = zext i32 %43 to i64
  %45 = lshr i32 %40, 9
  %46 = select i1 %41, i32 1, i32 %45
  br label %47

47:                                               ; preds = %38, %35
  %48 = phi i64 [ %44, %38 ], [ 1, %35 ]
  %49 = phi i32 [ %46, %38 ], [ 1, %35 ]
  %50 = add i64 %36, -1
  %51 = add i64 %50, %48
  %52 = icmp ult i64 %51, 4294967296
  br i1 %52, label %53, label %57, !prof !10

53:                                               ; preds = %47
  %54 = trunc i64 %51 to i32
  %55 = udiv i32 %54, %49
  %56 = zext i32 %55 to i64
  br label %60

57:                                               ; preds = %47
  %58 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %49, i64 %51) #17, !srcloc !16
  %59 = extractvalue { i64, i64 } %58, 1
  br label %60

60:                                               ; preds = %57, %53
  %61 = phi i64 [ %56, %53 ], [ %59, %57 ]
  br i1 %37, label %62, label %63

62:                                               ; preds = %60
  call void @string_get_size(i64 noundef %61, i64 noundef 512, i32 noundef 1, ptr noundef nonnull %3, i32 noundef 10) #13
  call void @string_get_size(i64 noundef %61, i64 noundef 512, i32 noundef 0, ptr noundef nonnull %4, i32 noundef 10) #13
  br label %77

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 32, i32 9
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %66, i32 512, i32 %65
  %68 = zext i32 %67 to i64
  call void @string_get_size(i64 noundef %61, i64 noundef %68, i32 noundef 1, ptr noundef nonnull %3, i32 noundef 10) #13
  %69 = load i32, ptr %64, align 4
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %70, i32 512, i32 %69
  %72 = zext i32 %71 to i64
  call void @string_get_size(i64 noundef %61, i64 noundef %72, i32 noundef 0, ptr noundef nonnull %4, i32 noundef 10) #13
  %73 = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 32, i32 9
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %75, i32 512, i32 %74
  br label %77

77:                                               ; preds = %63, %62
  %78 = phi i32 [ %76, %63 ], [ 512, %62 ]
  %79 = load ptr, ptr %8, align 4
  %80 = select i1 %1, ptr @.str.12, ptr @.str.13
  %81 = getelementptr inbounds %struct.gendisk, ptr %79, i32 0, i32 3
  %82 = getelementptr inbounds %struct.virtio_device, ptr %7, i32 0, i32 6
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %82, ptr noundef nonnull @.str.11, ptr noundef %81, ptr noundef nonnull %80, i64 noundef %61, i32 noundef %78, ptr noundef nonnull %4, ptr noundef nonnull %3) #14
  %83 = load ptr, ptr %8, align 4
  %84 = call zeroext i1 @set_capacity_and_notify(ptr noundef %83, i64 noundef %36) #13
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_disk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_tag_set(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_check_driver_offered_feature(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @virtblk_done(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.virtio_device, ptr %4, i32 0, i32 12
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store i32 0, ptr %2, align 4, !annotation !8
  %9 = getelementptr inbounds %struct.virtio_blk, ptr %6, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.virtio_blk_vq, ptr %10, i32 %8, i32 1
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #13
  br label %13

13:                                               ; preds = %31, %1
  %14 = phi i1 [ false, %1 ], [ %29, %31 ]
  call void @virtqueue_disable_cb(ptr noundef %0) #13
  %15 = load ptr, ptr %9, align 4
  %16 = getelementptr %struct.virtio_blk_vq, ptr %15, i32 %8
  %17 = load ptr, ptr %16, align 64
  %18 = call ptr @virtqueue_get_buf(ptr noundef %17, ptr noundef nonnull %2) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %20, %13
  %21 = phi ptr [ %26, %20 ], [ %18, %13 ]
  %22 = getelementptr i8, ptr %21, i32 -168
  call void @blk_mq_complete_request(ptr noundef %22) #13
  %23 = load ptr, ptr %9, align 4
  %24 = getelementptr %struct.virtio_blk_vq, ptr %23, i32 %8
  %25 = load ptr, ptr %24, align 64
  %26 = call ptr @virtqueue_get_buf(ptr noundef %25, ptr noundef nonnull %2) #13
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %20

28:                                               ; preds = %20, %13
  %29 = phi i1 [ %14, %13 ], [ true, %20 ]
  %30 = call zeroext i1 @virtqueue_is_broken(ptr noundef %0) #13
  br i1 %30, label %33, label %31, !prof !17

31:                                               ; preds = %28
  %32 = call zeroext i1 @virtqueue_enable_cb(ptr noundef %0) #13
  br i1 %32, label %33, label %13

33:                                               ; preds = %31, %28
  br i1 %29, label %34, label %39

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.virtio_blk, ptr %6, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.gendisk, ptr %36, i32 0, i32 9
  %38 = load ptr, ptr %37, align 4
  call void @blk_mq_start_stopped_hw_queues(ptr noundef %38, i1 noundef zeroext true) #13
  br label %39

39:                                               ; preds = %34, %33
  %40 = load ptr, ptr %9, align 4
  %41 = getelementptr %struct.virtio_blk_vq, ptr %40, i32 %8, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %41, i32 noundef %12) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtqueue_disable_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtqueue_get_buf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_complete_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_is_broken(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_enable_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_start_stopped_hw_queues(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @virtio_queue_rq(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.scatterlist, align 4
  %4 = alloca %struct.scatterlist, align 4
  %5 = alloca [3 x ptr], align 4
  %6 = alloca ptr, align 4
  %7 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 64
  %9 = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %1, align 4
  %12 = getelementptr %struct.request, ptr %11, i32 1
  %13 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 24
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr %struct.request, ptr %11, i32 1, i32 2
  store i64 0, ptr %15, align 8
  %16 = getelementptr inbounds %struct.request, ptr %11, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = trunc i32 %17 to i8
  switch i8 %18, label %30 [
    i8 0, label %19
    i8 1, label %22
    i8 2, label %47
    i8 3, label %33
    i8 9, label %25
    i8 34, label %29
  ]

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.request, ptr %11, i32 0, i32 9
  %21 = load i64, ptr %20, align 8
  store i64 %21, ptr %15, align 8
  br label %47

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.request, ptr %11, i32 0, i32 9
  %24 = load i64, ptr %23, align 8
  store i64 %24, ptr %15, align 8
  br label %47

25:                                               ; preds = %2
  %26 = lshr i32 %17, 23
  %27 = and i32 %26, 1
  %28 = xor i32 %27, 1
  br label %33

29:                                               ; preds = %2
  br label %47

30:                                               ; preds = %2
  %31 = load i1, ptr @virtblk_setup_cmd.__already_done, align 1
  br i1 %31, label %228, label %32, !prof !10

32:                                               ; preds = %30
  store i1 true, ptr @virtblk_setup_cmd.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 242, i32 noundef 9, ptr noundef null) #13
  br label %228

33:                                               ; preds = %25, %2
  %34 = phi i32 [ 13, %25 ], [ 11, %2 ]
  %35 = phi i32 [ %28, %25 ], [ 0, %2 ]
  store i32 %34, ptr %12, align 8
  %36 = getelementptr inbounds %struct.request, ptr %11, i32 0, i32 19
  %37 = load i16, ptr %36, align 2
  %38 = zext i16 %37 to i32
  %39 = getelementptr %struct.request, ptr %11, i32 1, i32 1
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.request, ptr %11, i32 0, i32 17
  %41 = load i16, ptr %40, align 2
  %42 = tail call i16 @llvm.umax.i16(i16 %41, i16 1) #13
  %43 = zext i16 %42 to i32
  %44 = shl nuw nsw i32 %43, 4
  %45 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %44, i32 noundef 2592) #16
  %46 = icmp eq ptr %45, null
  br i1 %46, label %228, label %53

47:                                               ; preds = %29, %22, %19, %2
  %48 = phi i32 [ 8, %29 ], [ 1, %22 ], [ 0, %19 ], [ 4, %2 ]
  store i32 %48, ptr %12, align 8
  %49 = getelementptr inbounds %struct.request, ptr %11, i32 0, i32 19
  %50 = load i16, ptr %49, align 2
  %51 = zext i16 %50 to i32
  %52 = getelementptr %struct.request, ptr %11, i32 1, i32 1
  store i32 %51, ptr %52, align 4
  br label %105

53:                                               ; preds = %33
  %54 = load ptr, ptr %11, align 8
  %55 = getelementptr inbounds %struct.request_queue, ptr %54, i32 0, i32 32, i32 23
  %56 = load i16, ptr %55, align 4
  %57 = icmp eq i16 %56, 1
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.virtio_blk_discard_write_zeroes, ptr %45, i32 0, i32 2
  store i32 %35, ptr %59, align 4
  %60 = getelementptr inbounds %struct.request, ptr %11, i32 0, i32 8
  %61 = load i32, ptr %60, align 8
  %62 = lshr i32 %61, 9
  %63 = getelementptr inbounds %struct.virtio_blk_discard_write_zeroes, ptr %45, i32 0, i32 1
  store i32 %62, ptr %63, align 8
  %64 = getelementptr inbounds %struct.request, ptr %11, i32 0, i32 9
  %65 = load i64, ptr %64, align 8
  store i64 %65, ptr %45, align 64
  br label %85

66:                                               ; preds = %53
  %67 = getelementptr inbounds %struct.request, ptr %11, i32 0, i32 10
  %68 = load ptr, ptr %67, align 8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %85, label %70

70:                                               ; preds = %70, %66
  %71 = phi i16 [ %82, %70 ], [ 0, %66 ]
  %72 = phi ptr [ %83, %70 ], [ %68, %66 ]
  %73 = getelementptr inbounds %struct.bio, ptr %72, i32 0, i32 8
  %74 = load i64, ptr %73, align 4
  %75 = getelementptr inbounds %struct.bio, ptr %72, i32 0, i32 8, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = lshr i32 %76, 9
  %78 = zext i16 %71 to i32
  %79 = getelementptr %struct.virtio_blk_discard_write_zeroes, ptr %45, i32 %78
  %80 = getelementptr %struct.virtio_blk_discard_write_zeroes, ptr %45, i32 %78, i32 2
  store i32 %35, ptr %80, align 4
  %81 = getelementptr %struct.virtio_blk_discard_write_zeroes, ptr %45, i32 %78, i32 1
  store i32 %77, ptr %81, align 8
  store i64 %74, ptr %79, align 16
  %82 = add i16 %71, 1
  %83 = load ptr, ptr %72, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %70

85:                                               ; preds = %70, %66, %58
  %86 = phi i16 [ 1, %58 ], [ 0, %66 ], [ %82, %70 ]
  %87 = icmp ne i16 %86, %42
  %88 = load i1, ptr @virtblk_setup_discard_write_zeroes.__already_done, align 1
  %89 = xor i1 %88, true
  %90 = select i1 %87, i1 %89, i1 false
  br i1 %90, label %91, label %92, !prof !17

91:                                               ; preds = %85
  store i1 true, ptr @virtblk_setup_discard_write_zeroes.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 166, i32 noundef 9, ptr noundef null) #13
  br label %92

92:                                               ; preds = %91, %85
  %93 = load ptr, ptr @mem_map, align 4
  %94 = ptrtoint ptr %45 to i32
  %95 = add i32 %94, 1073741824
  %96 = lshr i32 %95, 12
  %97 = getelementptr %struct.page, ptr %93, i32 %96
  %98 = getelementptr inbounds %struct.request, ptr %11, i32 0, i32 24
  store ptr %97, ptr %98, align 4
  %99 = and i32 %94, 4032
  %100 = getelementptr inbounds %struct.request, ptr %11, i32 0, i32 24, i32 0, i32 2
  store i32 %99, ptr %100, align 4
  %101 = getelementptr inbounds %struct.request, ptr %11, i32 0, i32 24, i32 0, i32 1
  store i32 %44, ptr %101, align 4
  %102 = getelementptr inbounds %struct.request, ptr %11, i32 0, i32 4
  %103 = load i32, ptr %102, align 8
  %104 = or i32 %103, 262144
  store i32 %104, ptr %102, align 8
  br label %105

105:                                              ; preds = %92, %47
  tail call void @blk_mq_start_request(ptr noundef %11) #13
  %106 = getelementptr inbounds %struct.request, ptr %11, i32 0, i32 4
  %107 = load i32, ptr %106, align 8
  %108 = and i32 %107, 262144
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.request, ptr %11, i32 0, i32 17
  %112 = load i16, ptr %111, align 2
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %133, label %117

114:                                              ; preds = %105
  %115 = getelementptr %struct.request, ptr %11, i32 1, i32 8
  %116 = getelementptr %struct.request, ptr %11, i32 1, i32 5
  store ptr %115, ptr %116, align 4
  br label %121

117:                                              ; preds = %110
  %118 = getelementptr %struct.request, ptr %11, i32 1, i32 8
  %119 = getelementptr %struct.request, ptr %11, i32 1, i32 5
  store ptr %118, ptr %119, align 4
  %120 = zext i16 %112 to i32
  br label %121

121:                                              ; preds = %117, %114
  %122 = phi ptr [ %119, %117 ], [ %116, %114 ]
  %123 = phi ptr [ %118, %117 ], [ %115, %114 ]
  %124 = phi i32 [ %120, %117 ], [ 1, %114 ]
  %125 = tail call i32 @sg_alloc_table_chained(ptr noundef %122, i32 noundef %124, ptr noundef %123, i32 noundef 2) #13
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %132, !prof !10

127:                                              ; preds = %121
  %128 = load ptr, ptr %7, align 64
  %129 = load ptr, ptr %122, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store ptr null, ptr %6, align 4
  %130 = call i32 @__blk_rq_map_sg(ptr noundef %128, ptr noundef %11, ptr noundef %129, ptr noundef nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %133, !prof !17

132:                                              ; preds = %127, %121
  call fastcc void @virtblk_cleanup_cmd(ptr noundef %11)
  br label %228

133:                                              ; preds = %127, %110
  %134 = phi i32 [ %130, %127 ], [ 0, %110 ]
  %135 = getelementptr inbounds %struct.virtio_blk, ptr %10, i32 0, i32 8
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr %struct.virtio_blk_vq, ptr %136, i32 %14, i32 1
  %138 = call i32 @_raw_spin_lock_irqsave(ptr noundef %137) #13
  %139 = load ptr, ptr %135, align 4
  %140 = getelementptr %struct.virtio_blk_vq, ptr %139, i32 %14
  %141 = load ptr, ptr %140, align 64
  %142 = getelementptr %struct.request, ptr %11, i32 1, i32 5
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq i32 %134, 0
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false) #13, !annotation !8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false) #13, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #13
  %145 = getelementptr inbounds i8, ptr %5, i32 4
  store i64 0, ptr %145, align 4, !annotation !8
  call void @sg_init_one(ptr noundef nonnull %3, ptr noundef %12, i32 noundef 16) #13
  store ptr %3, ptr %5, align 4
  br i1 %144, label %152, label %146

146:                                              ; preds = %133
  %147 = load i32, ptr %12, align 8
  %148 = and i32 %147, 1
  %149 = icmp eq i32 %148, 0
  store ptr %143, ptr %145, align 4
  %150 = select i1 %149, i32 1, i32 2
  %151 = xor i32 %148, 1
  br label %152

152:                                              ; preds = %146, %133
  %153 = phi i32 [ 1, %133 ], [ %150, %146 ]
  %154 = phi i32 [ 0, %133 ], [ %151, %146 ]
  %155 = getelementptr %struct.request, ptr %11, i32 1, i32 4
  call void @sg_init_one(ptr noundef nonnull %4, ptr noundef %155, i32 noundef 1) #13
  %156 = add nuw nsw i32 %154, 1
  %157 = add nuw nsw i32 %154, %153
  %158 = getelementptr [3 x ptr], ptr %5, i32 0, i32 %157
  store ptr %4, ptr %158, align 4
  %159 = call i32 @virtqueue_add_sgs(ptr noundef %141, ptr noundef nonnull %5, i32 noundef %153, i32 noundef %156, ptr noundef %12, i32 noundef 2592) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #13
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %210, label %161

161:                                              ; preds = %152
  %162 = load ptr, ptr %135, align 4
  %163 = getelementptr %struct.virtio_blk_vq, ptr %162, i32 %14
  %164 = load ptr, ptr %163, align 64
  %165 = call zeroext i1 @virtqueue_kick(ptr noundef %164) #13
  %166 = icmp eq i32 %159, -28
  br i1 %166, label %167, label %168

167:                                              ; preds = %161
  call void @blk_mq_stop_hw_queue(ptr noundef %0) #13
  br label %168

168:                                              ; preds = %167, %161
  %169 = load ptr, ptr %135, align 4
  %170 = getelementptr %struct.virtio_blk_vq, ptr %169, i32 %14, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %170, i32 noundef %138) #13
  %171 = load i32, ptr %106, align 8
  %172 = and i32 %171, 262144
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %168
  %175 = getelementptr inbounds %struct.request, ptr %11, i32 0, i32 17
  %176 = load i16, ptr %175, align 2
  %177 = icmp eq i16 %176, 0
  br i1 %177, label %206, label %178

178:                                              ; preds = %174, %168
  call void @sg_free_table_chained(ptr noundef %142, i32 noundef 2) #13
  %179 = load i32, ptr %106, align 8
  %180 = and i32 %179, 262144
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %206, label %182

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.request, ptr %11, i32 0, i32 24
  %184 = load ptr, ptr %183, align 4
  %185 = load i32, ptr %184, align 4
  %186 = lshr i32 %185, 30
  %187 = icmp eq i32 %186, 2
  br i1 %187, label %193, label %188

188:                                              ; preds = %182
  %189 = icmp eq i32 %186, 3
  %190 = load i32, ptr @movable_zone, align 4
  %191 = icmp eq i32 %190, 2
  %192 = select i1 %189, i1 %191, i1 false
  br label %193

193:                                              ; preds = %188, %182
  %194 = phi i1 [ true, %182 ], [ %192, %188 ]
  %195 = load i1, ptr @bvec_virt.__already_done, align 1
  %196 = xor i1 %195, true
  %197 = select i1 %194, i1 %196, i1 false
  br i1 %197, label %198, label %200, !prof !17

198:                                              ; preds = %193
  store i1 true, ptr @bvec_virt.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 240, i32 noundef 9, ptr noundef null) #13
  %199 = load ptr, ptr %183, align 4
  br label %200

200:                                              ; preds = %198, %193
  %201 = phi ptr [ %199, %198 ], [ %184, %193 ]
  %202 = call ptr @page_address(ptr noundef %201) #13
  %203 = getelementptr inbounds %struct.request, ptr %11, i32 0, i32 24, i32 0, i32 2
  %204 = load i32, ptr %203, align 4
  %205 = getelementptr i8, ptr %202, i32 %204
  call void @kfree(ptr noundef %205) #13
  br label %206

206:                                              ; preds = %200, %178, %174
  %207 = icmp eq i32 %159, -12
  %208 = select i1 %207, i8 9, i8 10
  %209 = select i1 %166, i8 13, i8 %208
  br label %228

210:                                              ; preds = %152
  %211 = getelementptr inbounds %struct.blk_mq_queue_data, ptr %1, i32 0, i32 1
  %212 = load i8, ptr %211, align 4, !range !18
  %213 = icmp eq i8 %212, 0
  %214 = load ptr, ptr %135, align 4
  br i1 %213, label %226, label %215

215:                                              ; preds = %210
  %216 = getelementptr %struct.virtio_blk_vq, ptr %214, i32 %14
  %217 = load ptr, ptr %216, align 64
  %218 = call zeroext i1 @virtqueue_kick_prepare(ptr noundef %217) #13
  %219 = load ptr, ptr %135, align 4
  %220 = getelementptr %struct.virtio_blk_vq, ptr %219, i32 %14, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %220, i32 noundef %138) #13
  br i1 %218, label %221, label %228

221:                                              ; preds = %215
  %222 = load ptr, ptr %135, align 4
  %223 = getelementptr %struct.virtio_blk_vq, ptr %222, i32 %14
  %224 = load ptr, ptr %223, align 64
  %225 = call zeroext i1 @virtqueue_notify(ptr noundef %224) #13
  br label %228

226:                                              ; preds = %210
  %227 = getelementptr %struct.virtio_blk_vq, ptr %214, i32 %14, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %227, i32 noundef %138) #13
  br label %228

228:                                              ; preds = %226, %221, %215, %206, %132, %33, %32, %30
  %229 = phi i8 [ 9, %132 ], [ %209, %206 ], [ 0, %226 ], [ 0, %221 ], [ 0, %215 ], [ 9, %33 ], [ 10, %30 ], [ 10, %32 ]
  ret i8 %229
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @virtio_commit_rqs(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.virtio_blk, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 24
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.virtio_blk_vq, ptr %7, i32 %9
  %11 = getelementptr %struct.virtio_blk_vq, ptr %7, i32 %9, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %11) #13
  %12 = load ptr, ptr %10, align 64
  %13 = tail call zeroext i1 @virtqueue_kick_prepare(ptr noundef %12) #13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  %14 = load i16, ptr %11, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !21
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !23
  br i1 %13, label %16, label %19

16:                                               ; preds = %1
  %17 = load ptr, ptr %10, align 64
  %18 = tail call zeroext i1 @virtqueue_notify(ptr noundef %17) #13
  br label %19

19:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @virtblk_request_done(ptr noundef %0) #9 {
  %2 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 262144
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 17
  %8 = load i16, ptr %7, align 2
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %39, label %10

10:                                               ; preds = %6, %1
  %11 = getelementptr %struct.request, ptr %0, i32 1, i32 5
  tail call void @sg_free_table_chained(ptr noundef %11, i32 noundef 2) #13
  %12 = load i32, ptr %2, align 8
  %13 = and i32 %12, 262144
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %39, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 24
  %17 = load ptr, ptr %16, align 4
  %18 = load i32, ptr %17, align 4
  %19 = lshr i32 %18, 30
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = icmp eq i32 %19, 3
  %23 = load i32, ptr @movable_zone, align 4
  %24 = icmp eq i32 %23, 2
  %25 = select i1 %22, i1 %24, i1 false
  br label %26

26:                                               ; preds = %21, %15
  %27 = phi i1 [ true, %15 ], [ %25, %21 ]
  %28 = load i1, ptr @bvec_virt.__already_done, align 1
  %29 = xor i1 %28, true
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %33, !prof !17

31:                                               ; preds = %26
  store i1 true, ptr @bvec_virt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 240, i32 noundef 9, ptr noundef null) #13
  %32 = load ptr, ptr %16, align 4
  br label %33

33:                                               ; preds = %31, %26
  %34 = phi ptr [ %32, %31 ], [ %17, %26 ]
  %35 = tail call ptr @page_address(ptr noundef %34) #13
  %36 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 24, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr i8, ptr %35, i32 %37
  tail call void @kfree(ptr noundef %38) #13
  br label %39

39:                                               ; preds = %33, %10, %6
  %40 = getelementptr %struct.request, ptr %0, i32 1, i32 4
  %41 = load i8, ptr %40, align 8
  %42 = icmp eq i8 %41, 2
  %43 = select i1 %42, i8 1, i8 10
  %44 = icmp eq i8 %41, 0
  %45 = select i1 %44, i8 0, i8 %43
  tail call void @blk_mq_end_request(ptr noundef %0, i8 noundef zeroext %45) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtblk_map_queues(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.virtio_blk, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @blk_mq_virtio_map_queues(ptr noundef %0, ptr noundef %5, i32 noundef 0) #13
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_start_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @virtblk_cleanup_cmd(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 262144
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %30, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 24
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 30
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %17, label %12

12:                                               ; preds = %6
  %13 = icmp eq i32 %10, 3
  %14 = load i32, ptr @movable_zone, align 4
  %15 = icmp eq i32 %14, 2
  %16 = select i1 %13, i1 %15, i1 false
  br label %17

17:                                               ; preds = %12, %6
  %18 = phi i1 [ true, %6 ], [ %16, %12 ]
  %19 = load i1, ptr @bvec_virt.__already_done, align 1
  %20 = xor i1 %19, true
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %24, !prof !17

22:                                               ; preds = %17
  store i1 true, ptr @bvec_virt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 240, i32 noundef 9, ptr noundef null) #13
  %23 = load ptr, ptr %7, align 4
  br label %24

24:                                               ; preds = %22, %17
  %25 = phi ptr [ %23, %22 ], [ %8, %17 ]
  %26 = tail call ptr @page_address(ptr noundef %25) #13
  %27 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 24, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr i8, ptr %26, i32 %28
  tail call void @kfree(ptr noundef %29) #13
  br label %30

30:                                               ; preds = %24, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_kick(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_stop_hw_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_kick_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_notify(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table_chained(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__blk_rq_map_sg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_add_sgs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table_chained(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_end_request(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_virtio_map_queues(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtblk_open(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 10
  %6 = load ptr, ptr %5, align 8
  tail call void @mutex_lock(ptr noundef %6) #13
  %7 = getelementptr inbounds %struct.virtio_blk, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.virtio_blk, ptr %6, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #13, !srcloc !13
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #13, !srcloc !24
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !17

15:                                               ; preds = %10
  %16 = add i32 %13, 1
  %17 = or i32 %16, %13
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %21, label %19, !prof !10

19:                                               ; preds = %15, %10
  %20 = phi i32 [ 2, %10 ], [ 1, %15 ]
  tail call void @refcount_warn_saturate(ptr noundef %11, i32 noundef %20) #13
  br label %21

21:                                               ; preds = %19, %15, %2
  %22 = phi i32 [ -6, %2 ], [ 0, %15 ], [ 0, %19 ]
  tail call void @mutex_unlock(ptr noundef %6) #13
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @virtblk_release(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.virtio_blk, ptr %4, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #13, !srcloc !13
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #13, !srcloc !14
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = icmp sgt i32 %7, 0
  br i1 %10, label %15, label %11, !prof !10

11:                                               ; preds = %9
  tail call void @refcount_warn_saturate(ptr noundef %5, i32 noundef 3) #13
  br label %15

12:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !15
  %13 = getelementptr inbounds %struct.virtio_blk, ptr %4, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  tail call void @ida_free(ptr noundef nonnull @vd_index_ida, i32 noundef %14) #13
  tail call void @kfree(ptr noundef %4) #13
  br label %15

15:                                               ; preds = %12, %11, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtblk_getgeo(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca i16, align 2
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 17
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 10
  %9 = load ptr, ptr %8, align 8
  tail call void @mutex_lock(ptr noundef %9) #13
  %10 = getelementptr inbounds %struct.virtio_blk, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %49, label %13

13:                                               ; preds = %2
  tail call void @virtio_check_driver_offered_feature(ptr noundef nonnull %11, i32 noundef 4) #13
  %14 = getelementptr inbounds %struct.virtio_device, ptr %11, i32 0, i32 11
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 16
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %39, label %18

18:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i16 0, ptr %3, align 2, !annotation !8
  %19 = load ptr, ptr %10, align 4
  %20 = getelementptr inbounds %struct.virtio_device, ptr %19, i32 0, i32 8
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.virtio_config_ops, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  call void %23(ptr noundef %19, i32 noundef 16, ptr noundef nonnull %3, i32 noundef 2) #13
  %24 = load i16, ptr %3, align 2
  %25 = getelementptr inbounds %struct.hd_geometry, ptr %1, i32 0, i32 2
  store i16 %24, ptr %25, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #13
  store i8 0, ptr %4, align 1, !annotation !8
  %26 = load ptr, ptr %10, align 4
  %27 = getelementptr inbounds %struct.virtio_device, ptr %26, i32 0, i32 8
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.virtio_config_ops, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  call void %30(ptr noundef %26, i32 noundef 18, ptr noundef nonnull %4, i32 noundef 1) #13
  %31 = load i8, ptr %4, align 1
  store i8 %31, ptr %1, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #13
  store i8 0, ptr %5, align 1, !annotation !8
  %32 = load ptr, ptr %10, align 4
  %33 = getelementptr inbounds %struct.virtio_device, ptr %32, i32 0, i32 8
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.virtio_config_ops, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  call void %36(ptr noundef %32, i32 noundef 19, ptr noundef nonnull %5, i32 noundef 1) #13
  %37 = load i8, ptr %5, align 1
  %38 = getelementptr inbounds %struct.hd_geometry, ptr %1, i32 0, i32 1
  store i8 %37, ptr %38, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  br label %49

39:                                               ; preds = %13
  store i8 64, ptr %1, align 4
  %40 = getelementptr inbounds %struct.hd_geometry, ptr %1, i32 0, i32 1
  store i8 32, ptr %40, align 1
  %41 = load ptr, ptr %6, align 8
  %42 = getelementptr inbounds %struct.gendisk, ptr %41, i32 0, i32 7
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.block_device, ptr %43, i32 0, i32 1
  %45 = load i64, ptr %44, align 8
  %46 = lshr i64 %45, 11
  %47 = trunc i64 %46 to i16
  %48 = getelementptr inbounds %struct.hd_geometry, ptr %1, i32 0, i32 2
  store i16 %47, ptr %48, align 2
  br label %49

49:                                               ; preds = %39, %18, %2
  %50 = phi i32 [ 0, %18 ], [ 0, %39 ], [ -6, %2 ]
  call void @mutex_unlock(ptr noundef %9) #13
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_write_cache(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @string_get_size(i64 noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_capacity_and_notify(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i16 @virtblk_attrs_are_visible(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) #2 {
  %4 = icmp eq ptr %1, @dev_attr_cache_type
  br i1 %4, label %5, label %16

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 496
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 10
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.virtio_blk, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void @virtio_check_driver_offered_feature(ptr noundef %11, i32 noundef 11) #13
  %12 = getelementptr inbounds %struct.virtio_device, ptr %11, i32 0, i32 11
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 2048
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %5, %3
  %17 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %18 = load i16, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %5
  %20 = phi i16 [ %18, %16 ], [ 292, %5 ]
  ret i16 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cache_type_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = alloca i8, align 1
  %5 = getelementptr i8, ptr %0, i32 496
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.gendisk, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.virtio_blk, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void @virtio_check_driver_offered_feature(ptr noundef %10, i32 noundef 11) #13
  %11 = getelementptr inbounds %struct.virtio_device, ptr %10, i32 0, i32 11
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 2048
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  tail call void @virtio_check_driver_offered_feature(ptr noundef %10, i32 noundef 9) #13
  %16 = load i64, ptr %11, align 8
  %17 = lshr i64 %16, 9
  %18 = trunc i64 %17 to i8
  %19 = and i8 %18, 1
  br label %28

20:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #13
  store i8 0, ptr %4, align 1, !annotation !8
  %21 = getelementptr inbounds %struct.virtio_device, ptr %10, i32 0, i32 8
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.virtio_config_ops, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  call void %24(ptr noundef %10, i32 noundef 32, ptr noundef nonnull %4, i32 noundef 1) #13
  %25 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #13
  %26 = icmp ugt i8 %25, 1
  br i1 %26, label %27, label %28, !prof !17

27:                                               ; preds = %20
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/virtio_blk.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 691, 0\0A.popsection", ""() #13, !srcloc !25
  unreachable

28:                                               ; preds = %20, %15
  %29 = phi i8 [ %19, %15 ], [ %25, %20 ]
  %30 = zext i8 %29 to i32
  %31 = getelementptr [2 x ptr], ptr @virtblk_cache_types, i32 0, i32 %30
  %32 = load ptr, ptr %31, align 4
  %33 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.15, ptr noundef %32) #13
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cache_type_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = getelementptr i8, ptr %0, i32 496
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.gendisk, ptr %8, i32 0, i32 10
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.virtio_blk, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void @virtio_check_driver_offered_feature(ptr noundef %12, i32 noundef 11) #13
  %13 = getelementptr inbounds %struct.virtio_device, ptr %12, i32 0, i32 11
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 2048
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18, !prof !17

17:                                               ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/virtio_blk.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 674, 0\0A.popsection", ""() #13, !srcloc !26
  unreachable

18:                                               ; preds = %4
  %19 = tail call i32 @__sysfs_match_string(ptr noundef nonnull @virtblk_cache_types, i32 noundef 2, ptr noundef %2) #13
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %49, label %21

21:                                               ; preds = %18
  %22 = trunc i32 %19 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 %22, ptr %6, align 1
  %23 = getelementptr inbounds %struct.virtio_device, ptr %12, i32 0, i32 8
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.virtio_config_ops, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  call void %26(ptr noundef %12, i32 noundef 32, ptr noundef nonnull %6, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  call void @virtio_check_driver_offered_feature(ptr noundef %12, i32 noundef 11) #13
  %27 = load i64, ptr %13, align 8
  %28 = and i64 %27, 2048
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #13
  store i8 0, ptr %5, align 1, !annotation !8
  %31 = load ptr, ptr %23, align 8
  %32 = getelementptr inbounds %struct.virtio_config_ops, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  call void %33(ptr noundef %12, i32 noundef 32, ptr noundef nonnull %5, i32 noundef 1) #13
  %34 = load i8, ptr %5, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  br label %40

35:                                               ; preds = %21
  call void @virtio_check_driver_offered_feature(ptr noundef %12, i32 noundef 9) #13
  %36 = load i64, ptr %13, align 8
  %37 = lshr i64 %36, 9
  %38 = trunc i64 %37 to i8
  %39 = and i8 %38, 1
  br label %40

40:                                               ; preds = %35, %30
  %41 = phi i8 [ %39, %35 ], [ %34, %30 ]
  %42 = getelementptr inbounds %struct.virtio_device, ptr %12, i32 0, i32 12
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.virtio_blk, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.gendisk, ptr %45, i32 0, i32 9
  %47 = load ptr, ptr %46, align 4
  %48 = icmp ne i8 %41, 0
  call void @blk_queue_write_cache(ptr noundef %47, i1 noundef zeroext %48, i1 noundef zeroext false) #13
  br label %49

49:                                               ; preds = %40, %18
  %50 = phi i32 [ %3, %40 ], [ %19, %18 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sysfs_match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @serial_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 496
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %2, i32 20
  store i8 0, ptr %6, align 1
  %7 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 10
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.virtio_blk, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.gendisk, ptr %10, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = tail call ptr @blk_mq_alloc_request(ptr noundef %12, i32 noundef 34, i32 noundef 0) #13
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = ptrtoint ptr %13 to i32
  br label %31

17:                                               ; preds = %3
  %18 = tail call i32 @blk_rq_map_kern(ptr noundef %12, ptr noundef %13, ptr noundef %2, i32 noundef 20, i32 noundef 3264) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = tail call zeroext i8 @blk_execute_rq(ptr noundef %13, i1 noundef zeroext false) #13
  %22 = getelementptr %struct.request, ptr %13, i32 1, i32 4
  %23 = load i8, ptr %22, align 8
  %24 = icmp eq i8 %23, 2
  %25 = select i1 %24, i8 1, i8 10
  %26 = icmp eq i8 %23, 0
  %27 = select i1 %26, i8 0, i8 %25
  %28 = tail call i32 @blk_status_to_errno(i8 noundef zeroext %27) #13
  br label %29

29:                                               ; preds = %20, %17
  %30 = phi i32 [ %18, %17 ], [ %28, %20 ]
  tail call void @blk_mq_free_request(ptr noundef %13) #13
  br label %31

31:                                               ; preds = %29, %15
  %32 = phi i32 [ %16, %15 ], [ %30, %29 ]
  switch i32 %32, label %35 [
    i32 0, label %33
    i32 -5, label %36
  ]

33:                                               ; preds = %31
  %34 = tail call i32 @strlen(ptr noundef %2)
  br label %36

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %35, %33, %31
  %37 = phi i32 [ %32, %35 ], [ %34, %33 ], [ 0, %31 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_mq_alloc_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_rq_map_kern(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @blk_execute_rq(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_status_to_errno(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @del_gendisk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_quiesce_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unquiesce_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_blkdev(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #12

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readnone }

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
!9 = !{i32 0, i32 33}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2153236434, i64 2153236928, i64 2153236471, i64 2153236527, i64 2153236561, i64 2153236585, i64 2153236626, i64 2153236647, i64 2153236675, i64 2153236709}
!12 = !{i64 2148281203}
!13 = !{i64 678137, i64 2148168108, i64 2148168134, i64 2148168181, i64 2148168203, i64 2148168231, i64 2148168251}
!14 = !{i64 2148183338, i64 2148183370, i64 2148183399, i64 2148183433, i64 2148183464, i64 2148183487}
!15 = !{i64 2149299250}
!16 = !{i64 2148028920, i64 2148029200, i64 2148029534, i64 2148029868}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i8 0, i8 2}
!19 = !{i64 2148846741}
!20 = !{i64 2148842565}
!21 = !{i64 2148842640, i64 2148842667, i64 2148842714, i64 2148842736, i64 2148842764, i64 2148842784}
!22 = !{i64 584060}
!23 = !{i64 2148870885}
!24 = !{i64 2148180981, i64 2148181013, i64 2148181042, i64 2148181076, i64 2148181107, i64 2148181130}
!25 = !{i64 2153402010, i64 2153402501, i64 2153402047, i64 2153402103, i64 2153402137, i64 2153402161, i64 2153402202, i64 2153402223, i64 2153402251, i64 2153402285}
!26 = !{i64 2153398097, i64 2153398588, i64 2153398134, i64 2153398190, i64 2153398224, i64 2153398248, i64 2153398289, i64 2153398310, i64 2153398338, i64 2153398372}
