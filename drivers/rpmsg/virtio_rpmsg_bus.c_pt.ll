; ModuleID = '/llk/IR/drivers/rpmsg/virtio_rpmsg_bus.c_pt.bc'
source_filename = "../drivers/rpmsg/virtio_rpmsg_bus.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.virtio_device_id = type { i32, i32 }
%struct.virtio_driver = type { %struct.device_driver, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type {}
%struct.rpmsg_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.rpmsg_endpoint_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.virtproc_info = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.mutex, %struct.idr, %struct.mutex, %struct.wait_queue_head, %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.virtio_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_rpmsg_channel = type { %struct.rpmsg_device, ptr }
%struct.rpmsg_device = type { %struct.device, %struct.rpmsg_device_id, ptr, i32, i32, ptr, i8, i8, ptr }
%struct.rpmsg_device_id = type { [32 x i8], i32 }
%struct.virtqueue = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr }
%struct.rpmsg_hdr = type { i32, i32, i32, i16, i16, [0 x i8] }
%struct.rpmsg_endpoint = type { ptr, %struct.kref, ptr, %struct.mutex, i32, ptr, ptr }
%struct.rpmsg_channel_info = type { [32 x i8], i32, i32 }
%struct.rpmsg_ns_msg = type { [32 x i8], i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@id_table = internal global [2 x %struct.virtio_device_id] [%struct.virtio_device_id { i32 7, i32 -1 }, %struct.virtio_device_id zeroinitializer], align 4
@__UNIQUE_ID_description225 = internal constant [56 x i8] c"description=Virtio-based remote processor messaging bus\00", section ".modinfo", align 1
@__UNIQUE_ID_license226 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@virtio_ipc_driver = internal global %struct.virtio_driver { %struct.device_driver { ptr @.str.1, ptr null, ptr @__this_module, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @id_table, ptr @features, i32 1, ptr null, i32 0, ptr null, ptr @rpmsg_probe, ptr null, ptr @rpmsg_remove, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [44 x i8] c"\013%s: failed to register virtio driver: %d\0A\00", align 1
@__func__.rpmsg_init = private unnamed_addr constant [11 x i8] c"rpmsg_init\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"virtio_rpmsg_bus\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@features = internal global [1 x i32] zeroinitializer, align 4
@__const.rpmsg_probe.vq_cbs = private unnamed_addr constant [2 x ptr] [ptr @rpmsg_recv_done, ptr @rpmsg_xmit_done], align 8
@rpmsg_probe.names = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.3], align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@rpmsg_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"&vrp->endpoints_lock\00", align 1
@rpmsg_probe.__key.5 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"&vrp->tx_lock\00", align 1
@rpmsg_probe.__key.7 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"&vrp->sendq\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"drivers/rpmsg/virtio_rpmsg_bus.c\00", align 1
@virtio_rpmsg_ops = internal constant %struct.rpmsg_device_ops { ptr @virtio_rpmsg_create_channel, ptr @virtio_rpmsg_release_channel, ptr @virtio_rpmsg_create_ept, ptr @virtio_rpmsg_announce_create, ptr @virtio_rpmsg_announce_destroy }, align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"rpmsg host is online\0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"uhm, incoming signal, but no used buffer ?\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"inbound msg too big: (%d, %d)\0A\00", align 1
@rpmsg_recv_single._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.rpmsg_recv_single = private unnamed_addr constant [18 x i8] c"rpmsg_recv_single\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"msg received with no recipient\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"failed to add a virtqueue buffer: %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"rpmsg_chrdev\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"channel %s:%x:%x already exist\0A\00", align 1
@__rpmsg_create_ept.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"&ept->cb_lock\00", align 1
@virtio_endpoint_ops = internal constant %struct.rpmsg_endpoint_ops { ptr @virtio_rpmsg_destroy_ept, ptr @virtio_rpmsg_send, ptr @virtio_rpmsg_sendto, ptr @virtio_rpmsg_send_offchannel, ptr @virtio_rpmsg_trysend, ptr @virtio_rpmsg_trysendto, ptr @virtio_rpmsg_trysend_offchannel, ptr null, ptr @virtio_rpmsg_get_mtu }, align 4
@.str.18 = private unnamed_addr constant [22 x i8] c"idr_alloc failed: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"invalid addr (src 0x%x, dst 0x%x)\0A\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"message is too big (%d)\0A\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"timeout waiting for a tx buffer\0A\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"virtqueue_add_outbuf failed: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"failed to announce service %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"can't remove rpmsg device: %d\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_license226], section "llvm.metadata"

@__mod_virtio__id_table_device_table = dso_local alias [2 x %struct.virtio_device_id], ptr @id_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @register_virtio_driver(ptr noundef nonnull @virtio_ipc_driver) #12
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.rpmsg_init, i32 noundef %1) #13
  br label %5

5:                                                ; preds = %3, %0
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @unregister_virtio_driver(ptr noundef nonnull @virtio_ipc_driver) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_virtio_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpmsg_probe(ptr noundef %0) #4 {
  %2 = alloca [2 x ptr], align 8
  %3 = alloca [2 x ptr], align 8
  %4 = alloca %struct.scatterlist, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  %5 = load i64, ptr @__const.rpmsg_probe.vq_cbs, align 8
  store i64 %5, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  store i64 0, ptr %3, align 8, !annotation !8
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 112) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %145, label %9

9:                                                ; preds = %1
  store ptr %0, ptr %7, align 8
  %10 = getelementptr inbounds %struct.virtproc_info, ptr %7, i32 0, i32 10
  store i32 0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.virtproc_info, ptr %7, i32 0, i32 10, i32 0, i32 1
  store i32 33554436, ptr %11, align 4
  %12 = getelementptr inbounds %struct.virtproc_info, ptr %7, i32 0, i32 10, i32 0, i32 2
  store ptr null, ptr %12, align 8
  %13 = getelementptr inbounds %struct.virtproc_info, ptr %7, i32 0, i32 10, i32 1
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.virtproc_info, ptr %7, i32 0, i32 10, i32 2
  store i32 0, ptr %14, align 8
  %15 = getelementptr inbounds %struct.virtproc_info, ptr %7, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %15, ptr noundef nonnull @.str.4, ptr noundef nonnull @rpmsg_probe.__key) #12
  %16 = getelementptr inbounds %struct.virtproc_info, ptr %7, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %16, ptr noundef nonnull @.str.6, ptr noundef nonnull @rpmsg_probe.__key.5) #12
  %17 = getelementptr inbounds %struct.virtproc_info, ptr %7, i32 0, i32 12
  tail call void @__init_waitqueue_head(ptr noundef %17, ptr noundef nonnull @.str.8, ptr noundef nonnull @rpmsg_probe.__key.7) #12
  %18 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 8
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.virtio_config_ops, ptr %19, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 %21(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull @rpmsg_probe.names, ptr noundef null, ptr noundef null) #12
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %143

24:                                               ; preds = %9
  %25 = load ptr, ptr %3, align 8
  %26 = getelementptr inbounds %struct.virtproc_info, ptr %7, i32 0, i32 1
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds [2 x ptr], ptr %3, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.virtproc_info, ptr %7, i32 0, i32 2
  store ptr %28, ptr %29, align 8
  %30 = call i32 @virtqueue_get_vring_size(ptr noundef %25) #12
  %31 = load ptr, ptr %29, align 8
  %32 = call i32 @virtqueue_get_vring_size(ptr noundef %31) #12
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %35, label %34, !prof !9

34:                                               ; preds = %24
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 902, i32 noundef 9, ptr noundef null) #12
  br label %35

35:                                               ; preds = %34, %24
  %36 = load ptr, ptr %26, align 4
  %37 = call i32 @virtqueue_get_vring_size(ptr noundef %36) #12
  %38 = icmp ult i32 %37, 256
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load ptr, ptr %26, align 4
  %41 = call i32 @virtqueue_get_vring_size(ptr noundef %40) #12
  %42 = shl i32 %41, 1
  br label %43

43:                                               ; preds = %39, %35
  %44 = phi i32 [ %42, %39 ], [ 512, %35 ]
  %45 = getelementptr inbounds %struct.virtproc_info, ptr %7, i32 0, i32 5
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.virtproc_info, ptr %7, i32 0, i32 6
  store i32 512, ptr %46, align 8
  %47 = shl i32 %44, 9
  %48 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6
  %49 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.virtproc_info, ptr %7, i32 0, i32 8
  %52 = call ptr @dma_alloc_attrs(ptr noundef %50, i32 noundef %47, ptr noundef %51, i32 noundef 3264, i32 noundef 0) #12
  %53 = icmp eq ptr %52, null
  br i1 %53, label %137, label %54

54:                                               ; preds = %43
  %55 = getelementptr inbounds %struct.virtproc_info, ptr %7, i32 0, i32 3
  store ptr %52, ptr %55, align 4
  %56 = lshr exact i32 %47, 1
  %57 = getelementptr i8, ptr %52, i32 %56
  %58 = getelementptr inbounds %struct.virtproc_info, ptr %7, i32 0, i32 4
  store ptr %57, ptr %58, align 8
  %59 = load i32, ptr %45, align 4
  %60 = icmp ult i32 %59, 2
  br i1 %60, label %78, label %61

61:                                               ; preds = %76, %54
  %62 = phi ptr [ %77, %76 ], [ %52, %54 ]
  %63 = phi i32 [ %72, %76 ], [ 0, %54 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !8
  %64 = load i32, ptr %46, align 8
  %65 = mul i32 %64, %63
  %66 = getelementptr i8, ptr %62, i32 %65
  call fastcc void @rpmsg_sg_init(ptr noundef nonnull %4, ptr noundef %66, i32 noundef %64)
  %67 = load ptr, ptr %26, align 4
  %68 = call i32 @virtqueue_add_inbuf(ptr noundef %67, ptr noundef nonnull %4, i32 noundef 1, ptr noundef %66, i32 noundef 3264) #12
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %71, label %70, !prof !9

70:                                               ; preds = %61
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 941, i32 noundef 9, ptr noundef null) #12
  br label %71

71:                                               ; preds = %70, %61
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #12
  %72 = add nuw nsw i32 %63, 1
  %73 = load i32, ptr %45, align 4
  %74 = lshr i32 %73, 1
  %75 = icmp ult i32 %72, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load ptr, ptr %55, align 4
  br label %61

78:                                               ; preds = %71, %54
  %79 = load ptr, ptr %29, align 8
  call void @virtqueue_disable_cb(ptr noundef %79) #12
  %80 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 12
  store ptr %7, ptr %80, align 8
  %81 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %82 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %81, i32 noundef 3520, i32 noundef 544) #14
  %83 = icmp eq ptr %82, null
  br i1 %83, label %101, label %84

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.virtio_rpmsg_channel, ptr %82, i32 0, i32 1
  store ptr %7, ptr %85, align 8
  %86 = getelementptr inbounds %struct.rpmsg_device, ptr %82, i32 0, i32 8
  store ptr @virtio_rpmsg_ops, ptr %86, align 8
  %87 = load ptr, ptr %7, align 8
  %88 = getelementptr inbounds %struct.virtio_device, ptr %87, i32 0, i32 6
  %89 = getelementptr inbounds %struct.device, ptr %82, i32 0, i32 1
  store ptr %88, ptr %89, align 4
  %90 = getelementptr inbounds %struct.device, ptr %82, i32 0, i32 33
  store ptr @virtio_rpmsg_release_device, ptr %90, align 4
  %91 = getelementptr inbounds %struct.rpmsg_device, ptr %82, i32 0, i32 7
  store i8 1, ptr %91, align 1
  %92 = getelementptr inbounds %struct.rpmsg_device, ptr %82, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(13) %92, ptr noundef nonnull align 1 dereferenceable(13) @.str.15, i32 13, i1 false) #12
  %93 = getelementptr inbounds %struct.rpmsg_device, ptr %82, i32 0, i32 2
  store ptr @.str.15, ptr %93, align 4
  %94 = call i32 @rpmsg_register_device(ptr noundef nonnull %82) #12
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %84
  call void @kfree(ptr noundef nonnull %82) #12
  %97 = inttoptr i32 %94 to ptr
  br label %98

98:                                               ; preds = %96, %84
  %99 = phi ptr [ %97, %96 ], [ %82, %84 ]
  %100 = icmp ugt ptr %99, inttoptr (i32 -4096 to ptr)
  br i1 %100, label %101, label %104

101:                                              ; preds = %98, %78
  %102 = phi ptr [ %99, %98 ], [ inttoptr (i32 -12 to ptr), %78 ]
  %103 = ptrtoint ptr %102 to i32
  br label %133

104:                                              ; preds = %98
  call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 0) #12
  %105 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 11
  %106 = load i64, ptr %105, align 8
  %107 = and i64 %106, 1
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %123, label %109

109:                                              ; preds = %104
  %110 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %111 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %110, i32 noundef 3520, i32 noundef 544) #14
  %112 = icmp eq ptr %111, null
  br i1 %112, label %131, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.virtio_rpmsg_channel, ptr %111, i32 0, i32 1
  store ptr %7, ptr %114, align 8
  %115 = getelementptr inbounds %struct.rpmsg_device, ptr %111, i32 0, i32 8
  store ptr @virtio_rpmsg_ops, ptr %115, align 8
  %116 = getelementptr inbounds %struct.rpmsg_device, ptr %111, i32 0, i32 7
  store i8 1, ptr %116, align 1
  %117 = load ptr, ptr %7, align 8
  %118 = getelementptr inbounds %struct.virtio_device, ptr %117, i32 0, i32 6
  %119 = getelementptr inbounds %struct.device, ptr %111, i32 0, i32 1
  store ptr %118, ptr %119, align 4
  %120 = getelementptr inbounds %struct.device, ptr %111, i32 0, i32 33
  store ptr @virtio_rpmsg_release_device, ptr %120, align 4
  %121 = call i32 @rpmsg_ns_register_device(ptr noundef nonnull %111) #12
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %113, %104
  %124 = load ptr, ptr %26, align 4
  %125 = call zeroext i1 @virtqueue_kick_prepare(ptr noundef %124) #12
  call fastcc void @virtio_device_ready(ptr noundef %0)
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load ptr, ptr %26, align 4
  %128 = call zeroext i1 @virtqueue_notify(ptr noundef %127) #12
  br label %129

129:                                              ; preds = %126, %123
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %48, ptr noundef nonnull @.str.10) #13
  br label %145

130:                                              ; preds = %113
  call void @kfree(ptr noundef nonnull %111) #12
  br label %131

131:                                              ; preds = %130, %109
  %132 = phi i32 [ %121, %130 ], [ -12, %109 ]
  call void @kfree(ptr noundef nonnull %99) #12
  br label %133

133:                                              ; preds = %131, %101
  %134 = phi i32 [ %103, %101 ], [ %132, %131 ]
  %135 = load ptr, ptr %49, align 4
  %136 = load i32, ptr %51, align 8
  call void @dma_free_attrs(ptr noundef %135, i32 noundef %47, ptr noundef nonnull %52, i32 noundef %136, i32 noundef 0) #12
  br label %137

137:                                              ; preds = %133, %43
  %138 = phi i32 [ %134, %133 ], [ -12, %43 ]
  %139 = load ptr, ptr %18, align 8
  %140 = getelementptr inbounds %struct.virtio_config_ops, ptr %139, i32 0, i32 8
  %141 = load ptr, ptr %140, align 4
  %142 = load ptr, ptr %7, align 8
  call void %141(ptr noundef %142) #12
  br label %143

143:                                              ; preds = %137, %9
  %144 = phi i32 [ %22, %9 ], [ %138, %137 ]
  call void @kfree(ptr noundef nonnull %7) #12
  br label %145

145:                                              ; preds = %143, %129, %1
  %146 = phi i32 [ %144, %143 ], [ 0, %129 ], [ -12, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret i32 %146
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rpmsg_remove(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.virtproc_info, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.virtproc_info, ptr %3, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  tail call void @virtio_reset_device(ptr noundef %0) #12
  %8 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6
  %9 = tail call i32 @device_for_each_child(ptr noundef %8, ptr noundef null, ptr noundef nonnull @rpmsg_remove_device) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.24, i32 noundef %9) #13
  br label %12

12:                                               ; preds = %11, %1
  %13 = mul i32 %7, %5
  %14 = getelementptr inbounds %struct.virtproc_info, ptr %3, i32 0, i32 10
  tail call void @idr_destroy(ptr noundef %14) #12
  %15 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 8
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.virtio_config_ops, ptr %16, i32 0, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %3, align 4
  tail call void %18(ptr noundef %19) #12
  %20 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.virtproc_info, ptr %3, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.virtproc_info, ptr %3, i32 0, i32 8
  %25 = load i32, ptr %24, align 4
  tail call void @dma_free_attrs(ptr noundef %21, i32 noundef %13, ptr noundef %23, i32 noundef %25, i32 noundef 0) #12
  tail call void @kfree(ptr noundef %3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rpmsg_recv_done(ptr noundef %0) #4 {
  %2 = alloca %struct.scatterlist, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.virtio_device, ptr %5, i32 0, i32 12
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.virtio_device, ptr %5, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !8
  %9 = call ptr @virtqueue_get_buf(ptr noundef %0, ptr noundef nonnull %3) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.virtproc_info, ptr %7, i32 0, i32 6
  %13 = getelementptr inbounds %struct.virtproc_info, ptr %7, i32 0, i32 11
  %14 = getelementptr inbounds %struct.virtproc_info, ptr %7, i32 0, i32 10
  %15 = getelementptr inbounds %struct.virtproc_info, ptr %7, i32 0, i32 1
  br label %17

16:                                               ; preds = %1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.11) #13
  br label %88

17:                                               ; preds = %78, %11
  %18 = phi i32 [ 0, %11 ], [ %79, %78 ]
  %19 = phi ptr [ %9, %11 ], [ %80, %78 ]
  %20 = load i32, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #12, !annotation !8
  %21 = getelementptr inbounds %struct.rpmsg_hdr, ptr %19, i32 0, i32 3
  %22 = load i16, ptr %21, align 1
  %23 = zext i16 %22 to i32
  %24 = load i32, ptr %12, align 4
  %25 = icmp ult i32 %24, %20
  %26 = add i32 %20, -16
  %27 = icmp ult i32 %26, %23
  %28 = select i1 %25, i1 true, i1 %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = zext i16 %22 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.12, i32 noundef %20, i32 noundef %30) #13
  br label %77

31:                                               ; preds = %17
  call void @mutex_lock(ptr noundef %13) #12
  %32 = getelementptr inbounds %struct.rpmsg_hdr, ptr %19, i32 0, i32 1
  %33 = load i32, ptr %32, align 1
  %34 = call ptr @idr_find(ptr noundef %14, i32 noundef %33) #12
  %35 = icmp eq ptr %34, null
  br i1 %35, label %67, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.rpmsg_endpoint, ptr %34, i32 0, i32 1
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #12, !srcloc !10
  %38 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #12, !srcloc !11
  %39 = extractvalue { i32, i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41, !prof !12

41:                                               ; preds = %36
  %42 = add i32 %39, 1
  %43 = or i32 %42, %39
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %47, label %45, !prof !9

45:                                               ; preds = %41, %36
  %46 = phi i32 [ 2, %36 ], [ 1, %41 ]
  call void @refcount_warn_saturate(ptr noundef %37, i32 noundef %46) #12
  br label %47

47:                                               ; preds = %45, %41
  call void @mutex_unlock(ptr noundef %13) #12
  %48 = getelementptr inbounds %struct.rpmsg_endpoint, ptr %34, i32 0, i32 3
  call void @mutex_lock(ptr noundef %48) #12
  %49 = getelementptr inbounds %struct.rpmsg_endpoint, ptr %34, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %59, label %52

52:                                               ; preds = %47
  %53 = load ptr, ptr %34, align 4
  %54 = getelementptr inbounds %struct.rpmsg_hdr, ptr %19, i32 0, i32 5
  %55 = getelementptr inbounds %struct.rpmsg_endpoint, ptr %34, i32 0, i32 5
  %56 = load ptr, ptr %55, align 4
  %57 = load i32, ptr %19, align 1
  %58 = call i32 %50(ptr noundef %53, ptr noundef %54, i32 noundef %23, ptr noundef %56, i32 noundef %57) #12
  br label %59

59:                                               ; preds = %52, %47
  call void @mutex_unlock(ptr noundef %48) #12
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #12, !srcloc !10
  %60 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #12, !srcloc !14
  %61 = extractvalue { i32, i32, i32 } %60, 0
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = icmp sgt i32 %61, 0
  br i1 %64, label %71, label %65, !prof !9

65:                                               ; preds = %63
  call void @refcount_warn_saturate(ptr noundef %37, i32 noundef 3) #12
  br label %71

66:                                               ; preds = %59
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !15
  call void @kfree(ptr noundef nonnull %34) #12
  br label %71

67:                                               ; preds = %31
  call void @mutex_unlock(ptr noundef %13) #12
  %68 = call i32 @___ratelimit(ptr noundef nonnull @rpmsg_recv_single._rs, ptr noundef nonnull @__func__.rpmsg_recv_single) #12
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.13) #13
  br label %71

71:                                               ; preds = %70, %67, %66, %65, %63
  %72 = load i32, ptr %12, align 4
  call fastcc void @rpmsg_sg_init(ptr noundef nonnull %2, ptr noundef nonnull %19, i32 noundef %72) #12
  %73 = load ptr, ptr %15, align 4
  %74 = call i32 @virtqueue_add_inbuf(ptr noundef %73, ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull %19, i32 noundef 3264) #12
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.14, i32 noundef %74) #13
  br label %77

77:                                               ; preds = %76, %29
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #12
  br label %82

78:                                               ; preds = %71
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #12
  %79 = add i32 %18, 1
  %80 = call ptr @virtqueue_get_buf(ptr noundef %0, ptr noundef nonnull %3) #12
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %17

82:                                               ; preds = %78, %77
  %83 = phi i32 [ %18, %77 ], [ %79, %78 ]
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load ptr, ptr %15, align 4
  %87 = call zeroext i1 @virtqueue_kick(ptr noundef %86) #12
  br label %88

88:                                               ; preds = %85, %82, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rpmsg_xmit_done(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 12
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.virtproc_info, ptr %5, i32 0, i32 12
  tail call void @__wake_up(ptr noundef %6, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_get_vring_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rpmsg_sg_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 {
  %4 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %1) #12
  br i1 %4, label %5, label %19

5:                                                ; preds = %3
  tail call void @sg_init_table(ptr noundef %0, i32 noundef 1) #12
  %6 = tail call ptr @vmalloc_to_page(ptr noundef %1) #12
  %7 = ptrtoint ptr %6 to i32
  %8 = and i32 %7, 3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10, !prof !9

10:                                               ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !16
  unreachable

11:                                               ; preds = %5
  %12 = ptrtoint ptr %1 to i32
  %13 = and i32 %12, 4095
  %14 = load i32, ptr %0, align 4
  %15 = and i32 %14, 3
  %16 = or i32 %15, %7
  store i32 %16, ptr %0, align 4
  %17 = getelementptr inbounds %struct.scatterlist, ptr %0, i32 0, i32 1
  store i32 %13, ptr %17, align 4
  %18 = getelementptr inbounds %struct.scatterlist, ptr %0, i32 0, i32 2
  store i32 %2, ptr %18, align 4
  br label %34

19:                                               ; preds = %3
  %20 = icmp ugt ptr %1, inttoptr (i32 -1073741825 to ptr)
  %21 = load ptr, ptr @high_memory, align 4
  %22 = icmp ugt ptr %21, %1
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = ptrtoint ptr %1 to i32
  %26 = add i32 %25, 1073741824
  %27 = lshr i32 %26, 12
  %28 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %29 = add i32 %28, %27
  %30 = tail call i32 @pfn_valid(i32 noundef %29) #12
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33, !prof !12

32:                                               ; preds = %24, %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 183, i32 noundef 9, ptr noundef null) #12
  br label %33

33:                                               ; preds = %32, %24
  tail call void @sg_init_one(ptr noundef %0, ptr noundef %1, i32 noundef %2) #12
  br label %34

34:                                               ; preds = %33, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_add_inbuf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtqueue_disable_cb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @virtio_rpmsg_release_device(ptr noundef %0) #4 {
  tail call void @kfree(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmsg_ns_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_kick_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @virtio_device_ready(ptr noundef %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.virtio_config_ops, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call zeroext i8 %5(ptr noundef %0) #12
  %7 = load ptr, ptr %2, align 8
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  tail call void %8(ptr noundef %0) #12
  br label %11

11:                                               ; preds = %10, %1
  %12 = and i8 %6, 4
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14, !prof !9

14:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/virtio_config.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 239, 0\0A.popsection", ""() #12, !srcloc !17
  unreachable

15:                                               ; preds = %11
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.virtio_config_ops, ptr %16, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = or i8 %6, 4
  tail call void %18(ptr noundef %0, i8 noundef zeroext %19) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_notify(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtqueue_get_buf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_kick(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmsg_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_check_driver_offered_feature(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @virtio_rpmsg_create_channel(ptr nocapture noundef readonly %0, ptr noundef %1) #4 {
  %3 = getelementptr inbounds %struct.virtio_rpmsg_channel, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.virtio_device, ptr %5, i32 0, i32 6
  %7 = tail call ptr @rpmsg_find_device(ptr noundef %6, ptr noundef %1) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  tail call void @put_device(ptr noundef nonnull %7) #12
  %10 = getelementptr inbounds %struct.rpmsg_channel_info, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rpmsg_channel_info, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.16, ptr noundef %1, i32 noundef %11, i32 noundef %13) #13
  br label %40

14:                                               ; preds = %2
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 544) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %40, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.virtio_rpmsg_channel, ptr %16, i32 0, i32 1
  store ptr %4, ptr %19, align 8
  %20 = getelementptr inbounds %struct.rpmsg_channel_info, ptr %1, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.rpmsg_device, ptr %16, i32 0, i32 3
  store i32 %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.rpmsg_channel_info, ptr %1, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.rpmsg_device, ptr %16, i32 0, i32 4
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.rpmsg_device, ptr %16, i32 0, i32 8
  store ptr @virtio_rpmsg_ops, ptr %26, align 8
  %27 = getelementptr inbounds %struct.rpmsg_device, ptr %16, i32 0, i32 7
  store i8 1, ptr %27, align 1
  %28 = icmp ne i32 %21, -1
  %29 = getelementptr inbounds %struct.rpmsg_device, ptr %16, i32 0, i32 6
  %30 = zext i1 %28 to i8
  store i8 %30, ptr %29, align 4
  %31 = getelementptr inbounds %struct.rpmsg_device, ptr %16, i32 0, i32 1
  %32 = tail call ptr @strncpy(ptr noundef %31, ptr noundef %1, i32 noundef 32) #12
  %33 = load ptr, ptr %4, align 4
  %34 = getelementptr inbounds %struct.virtio_device, ptr %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 1
  store ptr %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 33
  store ptr @virtio_rpmsg_release_device, ptr %36, align 4
  %37 = tail call i32 @rpmsg_register_device(ptr noundef nonnull %16) #12
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, ptr %16, ptr null
  br label %40

40:                                               ; preds = %18, %14, %9
  %41 = phi ptr [ null, %9 ], [ null, %14 ], [ %39, %18 ]
  ret ptr %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtio_rpmsg_release_channel(ptr nocapture noundef readonly %0, ptr noundef %1) #4 {
  %3 = getelementptr inbounds %struct.virtio_rpmsg_channel, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.virtio_device, ptr %5, i32 0, i32 6
  %7 = tail call i32 @rpmsg_unregister_device(ptr noundef %6, ptr noundef %1) #12
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @virtio_rpmsg_create_ept(ptr noundef %0, ptr noundef %1, ptr noundef %2, [10 x i32] %3) #4 {
  %5 = extractvalue [10 x i32] %3, 8
  %6 = getelementptr inbounds %struct.virtio_rpmsg_channel, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %0, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.virtio_device, ptr %10, i32 0, i32 6
  br label %12

12:                                               ; preds = %9, %4
  %13 = phi ptr [ %11, %9 ], [ %0, %4 ]
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 44) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %40, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.rpmsg_endpoint, ptr %15, i32 0, i32 1
  store volatile i32 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.rpmsg_endpoint, ptr %15, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %19, ptr noundef nonnull @.str.17, ptr noundef nonnull @__rpmsg_create_ept.__key) #12
  store ptr %0, ptr %15, align 8
  %20 = getelementptr inbounds %struct.rpmsg_endpoint, ptr %15, i32 0, i32 2
  store ptr %1, ptr %20, align 8
  %21 = getelementptr inbounds %struct.rpmsg_endpoint, ptr %15, i32 0, i32 5
  store ptr %2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.rpmsg_endpoint, ptr %15, i32 0, i32 6
  store ptr @virtio_endpoint_ops, ptr %22, align 8
  %23 = icmp eq i32 %5, -1
  %24 = add i32 %5, 1
  %25 = select i1 %23, i32 1024, i32 %5
  %26 = getelementptr inbounds %struct.virtproc_info, ptr %7, i32 0, i32 11
  tail call void @mutex_lock(ptr noundef %26) #12
  %27 = getelementptr inbounds %struct.virtproc_info, ptr %7, i32 0, i32 10
  %28 = tail call i32 @idr_alloc(ptr noundef %27, ptr noundef nonnull %15, i32 noundef %25, i32 noundef %24, i32 noundef 3264) #12
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.18, i32 noundef %28) #13
  tail call void @mutex_unlock(ptr noundef %26) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #12, !srcloc !10
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #12, !srcloc !14
  %32 = extractvalue { i32, i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = icmp sgt i32 %32, 0
  br i1 %35, label %40, label %36, !prof !9

36:                                               ; preds = %34
  tail call void @refcount_warn_saturate(ptr noundef %18, i32 noundef 3) #12
  br label %40

37:                                               ; preds = %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !15
  tail call void @kfree(ptr noundef nonnull %15) #12
  br label %40

38:                                               ; preds = %17
  %39 = getelementptr inbounds %struct.rpmsg_endpoint, ptr %15, i32 0, i32 4
  store i32 %28, ptr %39, align 8
  tail call void @mutex_unlock(ptr noundef %26) #12
  br label %40

40:                                               ; preds = %38, %37, %36, %34, %12
  %41 = phi ptr [ %15, %38 ], [ null, %12 ], [ null, %34 ], [ null, %36 ], [ null, %37 ]
  ret ptr %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtio_rpmsg_announce_create(ptr noundef %0) #4 {
  %2 = alloca %struct.rpmsg_ns_msg, align 1
  %3 = getelementptr inbounds %struct.virtio_rpmsg_channel, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 6
  %6 = load i8, ptr %5, align 4, !range !18
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %40, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %40, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %4, align 4
  tail call void @virtio_check_driver_offered_feature(ptr noundef %13, i32 noundef 0) #12
  %14 = getelementptr inbounds %struct.virtio_device, ptr %13, i32 0, i32 11
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 1
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %40, label %18

18:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #12
  %19 = getelementptr inbounds i8, ptr %2, i32 32
  store i64 0, ptr %19, align 1, !annotation !8
  %20 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 1
  %21 = call ptr @strncpy(ptr noundef nonnull %2, ptr noundef %20, i32 noundef 32)
  %22 = load ptr, ptr %9, align 8
  %23 = getelementptr inbounds %struct.rpmsg_endpoint, ptr %22, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq ptr %0, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 7
  %28 = load i8, ptr %27, align 1, !range !18
  %29 = icmp eq i8 %28, 0
  %30 = call i32 @llvm.bswap.i32(i32 %24) #12
  %31 = select i1 %29, i32 %30, i32 %24
  br label %32

32:                                               ; preds = %26, %18
  %33 = phi i32 [ %31, %26 ], [ %24, %18 ]
  %34 = getelementptr inbounds %struct.rpmsg_ns_msg, ptr %2, i32 0, i32 1
  store i32 %33, ptr %34, align 1
  %35 = getelementptr inbounds %struct.rpmsg_ns_msg, ptr %2, i32 0, i32 2
  store i32 0, ptr %35, align 1
  %36 = call i32 @rpmsg_sendto(ptr noundef %22, ptr noundef nonnull %2, i32 noundef 40, i32 noundef 53) #12
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %36) #13
  br label %39

39:                                               ; preds = %38, %32
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #12
  br label %40

40:                                               ; preds = %39, %12, %8, %1
  %41 = phi i32 [ %36, %39 ], [ 0, %12 ], [ 0, %8 ], [ 0, %1 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtio_rpmsg_announce_destroy(ptr noundef %0) #4 {
  %2 = alloca %struct.rpmsg_ns_msg, align 1
  %3 = getelementptr inbounds %struct.virtio_rpmsg_channel, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 6
  %6 = load i8, ptr %5, align 4, !range !18
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %42, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %42, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %4, align 4
  tail call void @virtio_check_driver_offered_feature(ptr noundef %13, i32 noundef 0) #12
  %14 = getelementptr inbounds %struct.virtio_device, ptr %13, i32 0, i32 11
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 1
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %42, label %18

18:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #12
  %19 = getelementptr inbounds i8, ptr %2, i32 32
  store i64 0, ptr %19, align 1, !annotation !8
  %20 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 1
  %21 = call ptr @strncpy(ptr noundef nonnull %2, ptr noundef %20, i32 noundef 32)
  %22 = load ptr, ptr %9, align 8
  %23 = getelementptr inbounds %struct.rpmsg_endpoint, ptr %22, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq ptr %0, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 7
  %28 = load i8, ptr %27, align 1, !range !18
  %29 = icmp eq i8 %28, 0
  %30 = call i32 @llvm.bswap.i32(i32 %24) #12
  %31 = select i1 %29, i32 %30, i32 %24
  %32 = select i1 %29, i32 16777216, i32 1
  br label %33

33:                                               ; preds = %26, %18
  %34 = phi i32 [ %31, %26 ], [ %24, %18 ]
  %35 = phi i32 [ %32, %26 ], [ 1, %18 ]
  %36 = getelementptr inbounds %struct.rpmsg_ns_msg, ptr %2, i32 0, i32 1
  store i32 %34, ptr %36, align 1
  %37 = getelementptr inbounds %struct.rpmsg_ns_msg, ptr %2, i32 0, i32 2
  store i32 %35, ptr %37, align 1
  %38 = call i32 @rpmsg_sendto(ptr noundef %22, ptr noundef nonnull %2, i32 noundef 40, i32 noundef 53) #12
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %38) #13
  br label %41

41:                                               ; preds = %40, %33
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #12
  br label %42

42:                                               ; preds = %41, %12, %8, %1
  %43 = phi i32 [ %38, %41 ], [ 0, %12 ], [ 0, %8 ], [ 0, %1 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpmsg_find_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmsg_unregister_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @virtio_rpmsg_destroy_ept(ptr noundef %0) #4 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.virtio_rpmsg_channel, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.virtproc_info, ptr %4, i32 0, i32 11
  tail call void @mutex_lock(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.virtproc_info, ptr %4, i32 0, i32 10
  %7 = getelementptr inbounds %struct.rpmsg_endpoint, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = tail call ptr @idr_remove(ptr noundef %6, i32 noundef %8) #12
  tail call void @mutex_unlock(ptr noundef %5) #12
  %10 = getelementptr inbounds %struct.rpmsg_endpoint, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %10) #12
  %11 = getelementptr inbounds %struct.rpmsg_endpoint, ptr %0, i32 0, i32 2
  store ptr null, ptr %11, align 4
  tail call void @mutex_unlock(ptr noundef %10) #12
  %12 = getelementptr inbounds %struct.rpmsg_endpoint, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #12, !srcloc !10
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #12, !srcloc !14
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = icmp sgt i32 %14, 0
  br i1 %17, label %20, label %18, !prof !9

18:                                               ; preds = %16
  tail call void @refcount_warn_saturate(ptr noundef %12, i32 noundef 3) #12
  br label %20

19:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !15
  tail call void @kfree(ptr noundef %0) #12
  br label %20

20:                                               ; preds = %19, %18, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtio_rpmsg_send(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #4 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.rpmsg_endpoint, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rpmsg_device, ptr %4, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = tail call fastcc i32 @rpmsg_send_offchannel_raw(ptr noundef %4, i32 noundef %6, i32 noundef %8, ptr noundef %1, i32 noundef %2, i1 noundef zeroext true)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtio_rpmsg_sendto(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.rpmsg_endpoint, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = tail call fastcc i32 @rpmsg_send_offchannel_raw(ptr noundef %5, i32 noundef %7, i32 noundef %3, ptr noundef %1, i32 noundef %2, i1 noundef zeroext true)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtio_rpmsg_send_offchannel(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) #4 {
  %6 = load ptr, ptr %0, align 4
  %7 = tail call fastcc i32 @rpmsg_send_offchannel_raw(ptr noundef %6, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext true)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtio_rpmsg_trysend(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #4 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.rpmsg_endpoint, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rpmsg_device, ptr %4, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = tail call fastcc i32 @rpmsg_send_offchannel_raw(ptr noundef %4, i32 noundef %6, i32 noundef %8, ptr noundef %1, i32 noundef %2, i1 noundef zeroext false)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtio_rpmsg_trysendto(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.rpmsg_endpoint, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = tail call fastcc i32 @rpmsg_send_offchannel_raw(ptr noundef %5, i32 noundef %7, i32 noundef %3, ptr noundef %1, i32 noundef %2, i1 noundef zeroext false)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtio_rpmsg_trysend_offchannel(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) #4 {
  %6 = load ptr, ptr %0, align 4
  %7 = tail call fastcc i32 @rpmsg_send_offchannel_raw(ptr noundef %6, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext false)
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @virtio_rpmsg_get_mtu(ptr nocapture noundef readonly %0) #11 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.virtio_rpmsg_channel, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.virtproc_info, ptr %4, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -16
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rpmsg_send_offchannel_raw(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i1 noundef zeroext %5) unnamed_addr #4 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.scatterlist, align 4
  %11 = alloca %struct.wait_queue_entry, align 4
  %12 = getelementptr inbounds %struct.virtio_rpmsg_channel, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %10) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %10, i8 0, i32 20, i1 false), !annotation !8
  %14 = icmp eq i32 %1, -1
  %15 = icmp eq i32 %2, -1
  %16 = or i1 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %1, i32 noundef %2) #13
  br label %160

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.virtproc_info, ptr %13, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, -16
  %22 = icmp ult i32 %21, %4
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %4) #13
  br label %160

24:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  store i32 0, ptr %9, align 4, !annotation !8
  %25 = getelementptr inbounds %struct.virtproc_info, ptr %13, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %25) #12
  %26 = getelementptr inbounds %struct.virtproc_info, ptr %13, i32 0, i32 7
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.virtproc_info, ptr %13, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = lshr i32 %29, 1
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.virtproc_info, ptr %13, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = load i32, ptr %19, align 4
  %36 = add nuw i32 %27, 1
  store i32 %36, ptr %26, align 4
  %37 = mul i32 %35, %27
  %38 = getelementptr i8, ptr %34, i32 %37
  br label %43

39:                                               ; preds = %24
  %40 = getelementptr inbounds %struct.virtproc_info, ptr %13, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = call ptr @virtqueue_get_buf(ptr noundef %41, ptr noundef nonnull %9) #12
  br label %43

43:                                               ; preds = %39, %32
  %44 = phi ptr [ %38, %32 ], [ %42, %39 ]
  call void @mutex_unlock(ptr noundef %25) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  %45 = icmp ne ptr %44, null
  %46 = or i1 %45, %5
  br i1 %46, label %47, label %160

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.virtproc_info, ptr %13, i32 0, i32 13
  %49 = getelementptr inbounds %struct.virtproc_info, ptr %13, i32 0, i32 2
  %50 = getelementptr inbounds %struct.virtproc_info, ptr %13, i32 0, i32 4
  %51 = getelementptr inbounds %struct.virtproc_info, ptr %13, i32 0, i32 12
  br label %52

52:                                               ; preds = %121, %47
  %53 = phi ptr [ %115, %121 ], [ %44, %47 ]
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %124

55:                                               ; preds = %52
  call void @mutex_lock(ptr noundef %25) #12
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %48) #12, !srcloc !10
  %56 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %48, ptr %48, i32 1, ptr elementtype(i32) %48) #12, !srcloc !20
  %57 = extractvalue { i32, i32 } %56, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !21
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load ptr, ptr %49, align 4
  %61 = call zeroext i1 @virtqueue_enable_cb(ptr noundef %60) #12
  br label %62

62:                                               ; preds = %59, %55
  call void @mutex_unlock(ptr noundef %25) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 0, ptr %8, align 4, !annotation !8
  call void @mutex_lock(ptr noundef %25) #12
  %63 = load i32, ptr %26, align 4
  %64 = load i32, ptr %28, align 4
  %65 = lshr i32 %64, 1
  %66 = icmp ult i32 %63, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load ptr, ptr %50, align 4
  %69 = load i32, ptr %19, align 4
  %70 = add nuw i32 %63, 1
  store i32 %70, ptr %26, align 4
  %71 = mul i32 %69, %63
  %72 = getelementptr i8, ptr %68, i32 %71
  br label %76

73:                                               ; preds = %62
  %74 = load ptr, ptr %49, align 4
  %75 = call ptr @virtqueue_get_buf(ptr noundef %74, ptr noundef nonnull %8) #12
  br label %76

76:                                               ; preds = %73, %67
  %77 = phi ptr [ %72, %67 ], [ %75, %73 ]
  call void @mutex_unlock(ptr noundef %25) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %113

79:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %11) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %11, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %11, i32 noundef 0) #12
  br label %80

80:                                               ; preds = %107, %79
  %81 = phi i32 [ 1500, %79 ], [ %108, %107 ]
  %82 = call i32 @prepare_to_wait_event(ptr noundef %51, ptr noundef nonnull %11, i32 noundef 1) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4, !annotation !8
  call void @mutex_lock(ptr noundef %25) #12
  %83 = load i32, ptr %26, align 4
  %84 = load i32, ptr %28, align 4
  %85 = lshr i32 %84, 1
  %86 = icmp ult i32 %83, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %80
  %88 = load ptr, ptr %50, align 4
  %89 = load i32, ptr %19, align 4
  %90 = add nuw i32 %83, 1
  store i32 %90, ptr %26, align 4
  %91 = mul i32 %89, %83
  %92 = getelementptr i8, ptr %88, i32 %91
  br label %96

93:                                               ; preds = %80
  %94 = load ptr, ptr %49, align 4
  %95 = call ptr @virtqueue_get_buf(ptr noundef %94, ptr noundef nonnull %7) #12
  br label %96

96:                                               ; preds = %93, %87
  %97 = phi ptr [ %92, %87 ], [ %95, %93 ]
  call void @mutex_unlock(ptr noundef %25) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  %98 = icmp ne ptr %97, null
  %99 = xor i1 %98, true
  %100 = icmp ne i32 %81, 0
  %101 = select i1 %99, i1 true, i1 %100
  %102 = select i1 %101, i32 %81, i32 1
  %103 = icmp eq i32 %102, 0
  %104 = select i1 %98, i1 true, i1 %103
  br i1 %104, label %109, label %105

105:                                              ; preds = %96
  %106 = icmp eq i32 %82, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %105
  %108 = call i32 @schedule_timeout(i32 noundef %102) #12
  br label %80

109:                                              ; preds = %96
  call void @finish_wait(ptr noundef %51, ptr noundef nonnull %11) #12
  br label %110

110:                                              ; preds = %109, %105
  %111 = phi ptr [ %97, %109 ], [ null, %105 ]
  %112 = phi i32 [ %102, %109 ], [ %82, %105 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %11) #12
  br label %113

113:                                              ; preds = %110, %76
  %114 = phi i32 [ 1500, %76 ], [ %112, %110 ]
  %115 = phi ptr [ %77, %76 ], [ %111, %110 ]
  call void @mutex_lock(ptr noundef %25) #12
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !22
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %48) #12, !srcloc !10
  %116 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %48, ptr %48, i32 1, ptr elementtype(i32) %48) #12, !srcloc !23
  %117 = extractvalue { i32, i32 } %116, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !24
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = load ptr, ptr %49, align 4
  call void @virtqueue_disable_cb(ptr noundef %120) #12
  br label %121

121:                                              ; preds = %119, %113
  call void @mutex_unlock(ptr noundef %25) #12
  %122 = icmp eq i32 %114, 0
  br i1 %122, label %123, label %52

123:                                              ; preds = %121
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.21) #13
  br label %160

124:                                              ; preds = %52
  %125 = trunc i32 %4 to i16
  %126 = icmp eq ptr %0, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.rpmsg_hdr, ptr %53, i32 0, i32 3
  store i16 %125, ptr %128, align 1
  %129 = getelementptr inbounds %struct.rpmsg_hdr, ptr %53, i32 0, i32 4
  store i16 0, ptr %129, align 1
  store i32 %1, ptr %53, align 1
  br label %146

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 7
  %132 = load i8, ptr %131, align 1, !range !18
  %133 = icmp eq i8 %132, 0
  %134 = call i16 @llvm.bswap.i16(i16 %125) #12
  %135 = select i1 %133, i16 %134, i16 %125
  %136 = getelementptr inbounds %struct.rpmsg_hdr, ptr %53, i32 0, i32 3
  store i16 %135, ptr %136, align 1
  %137 = getelementptr inbounds %struct.rpmsg_hdr, ptr %53, i32 0, i32 4
  store i16 0, ptr %137, align 1
  %138 = load i8, ptr %131, align 1, !range !18
  %139 = icmp eq i8 %138, 0
  %140 = call i32 @llvm.bswap.i32(i32 %1) #12
  %141 = select i1 %139, i32 %140, i32 %1
  store i32 %141, ptr %53, align 1
  %142 = load i8, ptr %131, align 1, !range !18
  %143 = icmp eq i8 %142, 0
  %144 = call i32 @llvm.bswap.i32(i32 %2) #12
  %145 = select i1 %143, i32 %144, i32 %2
  br label %146

146:                                              ; preds = %130, %127
  %147 = phi i32 [ %145, %130 ], [ %2, %127 ]
  %148 = getelementptr inbounds %struct.rpmsg_hdr, ptr %53, i32 0, i32 1
  store i32 %147, ptr %148, align 1
  %149 = getelementptr inbounds %struct.rpmsg_hdr, ptr %53, i32 0, i32 2
  store i32 0, ptr %149, align 1
  %150 = getelementptr inbounds %struct.rpmsg_hdr, ptr %53, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %150, ptr align 1 %3, i32 %4, i1 false)
  %151 = add i32 %4, 16
  call fastcc void @rpmsg_sg_init(ptr noundef nonnull %10, ptr noundef nonnull %53, i32 noundef %151)
  call void @mutex_lock(ptr noundef %25) #12
  %152 = load ptr, ptr %49, align 4
  %153 = call i32 @virtqueue_add_outbuf(ptr noundef %152, ptr noundef nonnull %10, i32 noundef 1, ptr noundef nonnull %53, i32 noundef 3264) #12
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %146
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %153) #13
  br label %159

156:                                              ; preds = %146
  %157 = load ptr, ptr %49, align 4
  %158 = call zeroext i1 @virtqueue_kick(ptr noundef %157) #12
  br label %159

159:                                              ; preds = %156, %155
  call void @mutex_unlock(ptr noundef %25) #12
  br label %160

160:                                              ; preds = %159, %123, %43, %23, %17
  %161 = phi i32 [ -22, %17 ], [ -90, %23 ], [ -512, %123 ], [ %153, %159 ], [ -12, %43 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %10) #12
  ret i32 %161
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_add_outbuf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_enable_cb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmsg_sendto(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_reset_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpmsg_remove_device(ptr noundef %0, ptr nocapture noundef readnone %1) #4 {
  tail call void @device_unregister(ptr noundef %0) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_virtio_driver(ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!10 = !{i64 639129, i64 2148140695, i64 2148140721, i64 2148140768, i64 2148140790, i64 2148140818, i64 2148140838}
!11 = !{i64 2148205415, i64 2148205447, i64 2148205476, i64 2148205510, i64 2148205541, i64 2148205564}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2148305637}
!14 = !{i64 2148207772, i64 2148207804, i64 2148207833, i64 2148207867, i64 2148207898, i64 2148207921}
!15 = !{i64 2149332632}
!16 = !{i64 2152538536, i64 2152539028, i64 2152538573, i64 2152538629, i64 2152538663, i64 2152538687, i64 2152538728, i64 2152538749, i64 2152538777, i64 2152538811}
!17 = !{i64 2152708825, i64 2152709319, i64 2152708862, i64 2152708918, i64 2152708952, i64 2152708976, i64 2152709017, i64 2152709038, i64 2152709066, i64 2152709100}
!18 = !{i8 0, i8 2}
!19 = !{i64 2148301803}
!20 = !{i64 2148204641, i64 2148204673, i64 2148204702, i64 2148204736, i64 2148204767, i64 2148204790}
!21 = !{i64 2148302006}
!22 = !{i64 2148304636}
!23 = !{i64 2148206998, i64 2148207030, i64 2148207059, i64 2148207093, i64 2148207124, i64 2148207147}
!24 = !{i64 2148304839}
