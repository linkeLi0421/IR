; ModuleID = '/llk/IR/drivers/media/platform/vsp1/vsp1_pipe.c_pt.bc'
source_filename = "../drivers/media/platform/vsp1/vsp1_pipe.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vsp1_format_info = type { i32, i32, i32, i32, i32, [3 x i32], i8, i8, i32, i32, i8 }
%struct.lock_class_key = type {}
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vsp1_device = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, [5 x ptr], ptr, [3 x ptr], [2 x ptr], [4 x ptr], %struct.list_head, %struct.list_head, %struct.v4l2_device, %struct.media_device, %struct.media_entity_operations, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.65], %struct.media_entity_enum, i32 }
%struct.anon.65 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.vsp1_device_info = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.vsp1_pipeline = type { %struct.media_pipeline, %struct.spinlock, i32, %struct.wait_queue_head, ptr, %struct.mutex, %struct.kref, i32, i32, i32, i32, [5 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i8, i8, i32, ptr, ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vsp1_entity = type { ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, i32, ptr, ptr, i32, %struct.v4l2_subdev, ptr, %struct.mutex }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.68 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.vsp1_route = type { i32, i32, i32, [5 x i32], i32 }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vsp1_rwpf = type { %struct.vsp1_entity, %struct.v4l2_ctrl_handler, ptr, i32, i32, %struct.v4l2_pix_format_mplane, ptr, i32, i32, i32, i32, %struct.anon.83, %struct.vsp1_rwpf_memory, i8, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.82, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.82 = type { i8 }
%struct.anon.83 = type { %struct.spinlock, %struct.anon.84, i32, i32, i8 }
%struct.anon.84 = type { ptr, ptr, ptr }
%struct.vsp1_rwpf_memory = type { [3 x i32] }
%struct.vsp1_entity_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }

@vsp1_video_formats = internal constant [44 x %struct.vsp1_format_info] [%struct.vsp1_format_info { i32 826427218, i32 4109, i32 0, i32 15, i32 1, [3 x i32] [i32 8, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 0 }, %struct.vsp1_format_info { i32 842093121, i32 4109, i32 25, i32 14, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 1 }, %struct.vsp1_format_info { i32 842093144, i32 4109, i32 1, i32 14, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 0 }, %struct.vsp1_format_info { i32 842088786, i32 4109, i32 26, i32 14, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 1 }, %struct.vsp1_format_info { i32 842094674, i32 4109, i32 2, i32 14, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 0 }, %struct.vsp1_format_info { i32 842089025, i32 4109, i32 29, i32 14, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 1 }, %struct.vsp1_format_info { i32 842089048, i32 4109, i32 29, i32 14, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 0 }, %struct.vsp1_format_info { i32 842088775, i32 4109, i32 30, i32 14, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 1 }, %struct.vsp1_format_info { i32 842094658, i32 4109, i32 30, i32 14, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 0 }, %struct.vsp1_format_info { i32 892424769, i32 4109, i32 27, i32 14, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 1 }, %struct.vsp1_format_info { i32 892424792, i32 4109, i32 4, i32 14, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 0 }, %struct.vsp1_format_info { i32 892420434, i32 4109, i32 28, i32 14, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 1 }, %struct.vsp1_format_info { i32 892426322, i32 4109, i32 5, i32 14, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 0 }, %struct.vsp1_format_info { i32 892420673, i32 4109, i32 31, i32 14, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 1 }, %struct.vsp1_format_info { i32 892420696, i32 4109, i32 31, i32 14, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 0 }, %struct.vsp1_format_info { i32 892420418, i32 4109, i32 32, i32 14, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 1 }, %struct.vsp1_format_info { i32 892426306, i32 4109, i32 32, i32 14, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 0 }, %struct.vsp1_format_info { i32 1346520914, i32 4109, i32 6, i32 14, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 0 }, %struct.vsp1_format_info { i32 861030210, i32 4109, i32 24, i32 15, i32 1, [3 x i32] [i32 24, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 0 }, %struct.vsp1_format_info { i32 859981650, i32 4109, i32 21, i32 15, i32 1, [3 x i32] [i32 24, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 0 }, %struct.vsp1_format_info { i32 875713089, i32 4109, i32 19, i32 12, i32 1, [3 x i32] [i32 32, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 1 }, %struct.vsp1_format_info { i32 875713112, i32 4109, i32 19, i32 12, i32 1, [3 x i32] [i32 32, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 0 }, %struct.vsp1_format_info { i32 875708754, i32 4109, i32 20, i32 12, i32 1, [3 x i32] [i32 32, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 1 }, %struct.vsp1_format_info { i32 875714642, i32 4109, i32 20, i32 12, i32 1, [3 x i32] [i32 32, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 0 }, %struct.vsp1_format_info { i32 875708993, i32 4109, i32 20, i32 15, i32 1, [3 x i32] [i32 32, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 1 }, %struct.vsp1_format_info { i32 875709016, i32 4109, i32 20, i32 15, i32 1, [3 x i32] [i32 32, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 0 }, %struct.vsp1_format_info { i32 875708738, i32 4109, i32 19, i32 15, i32 1, [3 x i32] [i32 32, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 1 }, %struct.vsp1_format_info { i32 875714626, i32 4109, i32 19, i32 15, i32 1, [3 x i32] [i32 32, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 0 }, %struct.vsp1_format_info { i32 861295432, i32 24577, i32 21, i32 15, i32 1, [3 x i32] [i32 24, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 0 }, %struct.vsp1_format_info { i32 878072648, i32 24577, i32 19, i32 15, i32 1, [3 x i32] [i32 32, i32 0, i32 0], i8 0, i8 0, i32 1, i32 1, i8 0 }, %struct.vsp1_format_info { i32 1498831189, i32 8215, i32 71, i32 15, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 0, i8 0, i32 2, i32 1, i8 0 }, %struct.vsp1_format_info { i32 1498765654, i32 8215, i32 71, i32 15, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 0, i8 1, i32 2, i32 1, i8 0 }, %struct.vsp1_format_info { i32 1448695129, i32 8215, i32 71, i32 15, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 1, i8 0, i32 2, i32 1, i8 0 }, %struct.vsp1_format_info { i32 1431918169, i32 8215, i32 71, i32 15, i32 1, [3 x i32] [i32 16, i32 0, i32 0], i8 1, i8 1, i32 2, i32 1, i8 0 }, %struct.vsp1_format_info { i32 842091854, i32 8215, i32 66, i32 15, i32 2, [3 x i32] [i32 8, i32 16, i32 0], i8 0, i8 0, i32 2, i32 2, i8 0 }, %struct.vsp1_format_info { i32 825380174, i32 8215, i32 66, i32 15, i32 2, [3 x i32] [i32 8, i32 16, i32 0], i8 0, i8 1, i32 2, i32 2, i8 0 }, %struct.vsp1_format_info { i32 909200718, i32 8215, i32 65, i32 15, i32 2, [3 x i32] [i32 8, i32 16, i32 0], i8 0, i8 0, i32 2, i32 1, i8 0 }, %struct.vsp1_format_info { i32 825642318, i32 8215, i32 65, i32 15, i32 2, [3 x i32] [i32 8, i32 16, i32 0], i8 0, i8 1, i32 2, i32 1, i8 0 }, %struct.vsp1_format_info { i32 842091865, i32 8215, i32 76, i32 15, i32 3, [3 x i32] [i32 8, i32 8, i32 8], i8 0, i8 0, i32 2, i32 2, i8 0 }, %struct.vsp1_format_info { i32 825380185, i32 8215, i32 76, i32 15, i32 3, [3 x i32] [i32 8, i32 8, i32 8], i8 0, i8 1, i32 2, i32 2, i8 0 }, %struct.vsp1_format_info { i32 909200729, i32 8215, i32 75, i32 15, i32 3, [3 x i32] [i32 8, i32 8, i32 8], i8 0, i8 0, i32 2, i32 1, i8 0 }, %struct.vsp1_format_info { i32 825642329, i32 8215, i32 75, i32 15, i32 3, [3 x i32] [i32 8, i32 8, i32 8], i8 0, i8 1, i32 2, i32 1, i8 0 }, %struct.vsp1_format_info { i32 875711833, i32 8215, i32 74, i32 15, i32 3, [3 x i32] [i32 8, i32 8, i32 8], i8 0, i8 0, i32 1, i32 1, i8 0 }, %struct.vsp1_format_info { i32 842288473, i32 8215, i32 74, i32 15, i32 3, [3 x i32] [i32 8, i32 8, i32 8], i8 0, i8 1, i32 1, i32 1, i8 0 }], align 4
@vsp1_pipeline_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [12 x i8] c"&pipe->lock\00", align 1
@vsp1_pipeline_init.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"&pipe->wq\00", align 1
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @vsp1_get_format_info(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vsp1_device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vsp1_device_info, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  switch i32 %1, label %9 [
    i32 1498765654, label %18
    i32 861295432, label %18
    i32 878072648, label %18
  ]

9:                                                ; preds = %8, %2
  br label %13

10:                                               ; preds = %13
  %11 = add nuw nsw i32 %14, 1
  %12 = icmp eq i32 %11, 44
  br i1 %12, label %18, label %13

13:                                               ; preds = %10, %9
  %14 = phi i32 [ %11, %10 ], [ 0, %9 ]
  %15 = getelementptr [44 x %struct.vsp1_format_info], ptr @vsp1_video_formats, i32 0, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %18, label %10

18:                                               ; preds = %13, %10, %8, %8, %8
  %19 = phi ptr [ null, %8 ], [ null, %8 ], [ null, %8 ], [ null, %10 ], [ %15, %13 ]
  ret ptr %19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vsp1_pipeline_reset(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %3, i32 396
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false)
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr i8, ptr %0, i32 208
  %9 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 19
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %17, label %12

12:                                               ; preds = %12, %7
  %13 = phi ptr [ %15, %12 ], [ %10, %7 ]
  %14 = getelementptr i8, ptr %13, i32 -12
  store ptr null, ptr %14, align 4
  %15 = load ptr, ptr %13, align 4
  %16 = icmp eq ptr %15, %9
  br i1 %16, label %17, label %12

17:                                               ; preds = %12, %7
  store volatile ptr %9, ptr %9, align 4
  %18 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 19, i32 1
  store ptr %9, ptr %18, align 4
  %19 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 2
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 8
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 10
  store i32 0, ptr %21, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %2, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vsp1_pipeline_init(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @vsp1_pipeline_init.__key) #7
  %3 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %4, ptr noundef nonnull @.str.2, ptr noundef nonnull @vsp1_pipeline_init.__key.1) #7
  %5 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 6
  store volatile i32 1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 19
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 19, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 2
  store i32 0, ptr %8, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vsp1_pipeline_run(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.vsp1_entity, ptr %7, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 %10, 2
  %12 = getelementptr inbounds %struct.vsp1_device, ptr %8, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 1) #7, !srcloc !9
  store i32 1, ptr %2, align 4
  br label %15

15:                                               ; preds = %5, %1
  %16 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 8
  store i32 0, ptr %16, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @vsp1_pipeline_stopped(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 1
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #7
  %4 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #7
  ret i1 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vsp1_pipeline_stop(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.vsp1_entity, ptr %4, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @vsp1_reset_wpf(ptr noundef %5, i32 noundef %11) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %47

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 1
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #7
  %17 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 2
  store i32 0, ptr %17, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #7
  br label %47

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 1
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #7
  %21 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 2, ptr %21, align 4
  br label %25

25:                                               ; preds = %24, %18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %20) #7
  %26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #7
  %27 = load i32, ptr %21, align 4
  %28 = icmp eq i32 %27, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %26) #7
  br i1 %28, label %47, label %29

29:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !10
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #7
  %30 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 3
  br label %31

31:                                               ; preds = %43, %29
  %32 = phi i32 [ 50, %29 ], [ %44, %43 ]
  %33 = call i32 @prepare_to_wait_event(ptr noundef %30, ptr noundef nonnull %2, i32 noundef 2) #7
  %34 = call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #7
  %35 = load i32, ptr %21, align 4
  %36 = icmp eq i32 %35, 0
  call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %34) #7
  %37 = xor i1 %36, true
  %38 = icmp ne i32 %32, 0
  %39 = select i1 %37, i1 true, i1 %38
  %40 = select i1 %39, i32 %32, i32 1
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %36, i1 true, i1 %41
  br i1 %42, label %45, label %43

43:                                               ; preds = %31
  %44 = call i32 @schedule_timeout(i32 noundef %40) #7
  br label %31

45:                                               ; preds = %31
  call void @finish_wait(ptr noundef %30, ptr noundef nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #7
  %46 = select i1 %41, i32 -110, i32 0
  br label %47

47:                                               ; preds = %45, %25, %14, %9
  %48 = phi i32 [ 0, %14 ], [ %12, %9 ], [ 0, %25 ], [ %46, %45 ]
  %49 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 19
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, %49
  br i1 %51, label %69, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.vsp1_device, ptr %5, i32 0, i32 3
  br label %54

54:                                               ; preds = %66, %52
  %55 = phi ptr [ %50, %52 ], [ %67, %66 ]
  %56 = getelementptr i8, ptr %55, i32 -16
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.vsp1_route, ptr %57, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %53, align 4
  %65 = getelementptr i8, ptr %64, i32 %61
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 63) #7, !srcloc !9
  br label %66

66:                                               ; preds = %63, %59, %54
  %67 = load ptr, ptr %55, align 4
  %68 = icmp eq ptr %67, %49
  br i1 %68, label %69, label %54

69:                                               ; preds = %66, %47
  %70 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 14
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.vsp1_device, ptr %5, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr i8, ptr %75, i32 8276
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 1855) #7, !srcloc !9
  br label %77

77:                                               ; preds = %73, %69
  %78 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 15
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.vsp1_device, ptr %5, i32 0, i32 3
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr i8, ptr %83, i32 8280
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 1855) #7, !srcloc !9
  br label %85

85:                                               ; preds = %81, %77
  %86 = load ptr, ptr %3, align 4
  %87 = getelementptr inbounds %struct.vsp1_entity, ptr %86, i32 0, i32 13
  %88 = icmp eq ptr %87, null
  br i1 %88, label %110, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.vsp1_entity, ptr %86, i32 0, i32 13, i32 6
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %91, i32 0, i32 3
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %110, label %95

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %93, i32 0, i32 10
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %110, label %99

99:                                               ; preds = %95
  %100 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %106, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %100, i32 0, i32 10
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %102, %99
  br label %107

107:                                              ; preds = %106, %102
  %108 = phi ptr [ %97, %106 ], [ %104, %102 ]
  %109 = call i32 %108(ptr noundef nonnull %87, i32 noundef 0) #7
  br label %110

110:                                              ; preds = %107, %95, %89, %85
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_reset_wpf(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @vsp1_pipeline_ready(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 4
  %4 = shl nsw i32 -1, %3
  %5 = xor i32 %4, -1
  %6 = shl i32 %5, 1
  %7 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = zext i1 %9 to i32
  %11 = or i32 %6, %10
  %12 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, %11
  ret i1 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vsp1_pipeline_frame_end(ptr noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %27, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vsp1_rwpf, ptr %5, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @vsp1_dlm_irq_frame_end(ptr noundef %7) #7
  %9 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 14
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  tail call void @vsp1_hgo_frame_end(ptr noundef nonnull %10) #7
  br label %13

13:                                               ; preds = %12, %3
  %14 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 15
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @vsp1_hgt_frame_end(ptr noundef nonnull %15) #7
  br label %18

18:                                               ; preds = %17, %13
  %19 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void %20(ptr noundef nonnull %0, i32 noundef %8) #7
  br label %23

23:                                               ; preds = %22, %18
  %24 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 9
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 4
  br label %27

27:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_dlm_irq_frame_end(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_hgo_frame_end(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_hgt_frame_end(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vsp1_pipeline_propagate_alpha(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 18
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.vsp1_entity, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, 2
  %13 = select i1 %12, i32 255, i32 %2
  tail call void @vsp1_uds_set_alpha(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %13) #7
  br label %14

14:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_uds_set_alpha(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vsp1_pipeline_propagate_partition(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 19
  %6 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 19, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %5
  br i1 %8, label %22, label %9

9:                                                ; preds = %18, %4
  %10 = phi ptr [ %20, %18 ], [ %7, %4 ]
  %11 = getelementptr i8, ptr %10, i32 -28
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.vsp1_entity_operations, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = getelementptr i8, ptr %10, i32 -32
  tail call void %14(ptr noundef %17, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #7
  br label %18

18:                                               ; preds = %16, %9
  %19 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %5
  br i1 %21, label %22, label %9

22:                                               ; preds = %18, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }

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
!8 = !{i64 2153297708}
!9 = !{i64 5764105}
!10 = !{!"auto-init"}
