; ModuleID = '/llk/IR/drivers/media/platform/vsp1/vsp1_entity.c_pt.bc'
source_filename = "../drivers/media/platform/vsp1/vsp1_entity.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vsp1_route = type { i32, i32, i32, [5 x i32], i32 }
%struct.lock_class_key = type {}
%struct.vsp1_entity = type { ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, i32, ptr, ptr, i32, %struct.v4l2_subdev, ptr, %struct.mutex }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.68 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.vsp1_pipeline = type { %struct.media_pipeline, %struct.spinlock, i32, %struct.wait_queue_head, ptr, %struct.mutex, %struct.kref, i32, i32, i32, i32, [5 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i8, i8, i32, ptr, ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.65], %struct.media_entity_enum, i32 }
%struct.anon.65 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.vsp1_entity_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.74, i16, i16, i16, [10 x i16] }
%union.anon.74 = type { i16 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.vsp1_device = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, [5 x ptr], ptr, [3 x ptr], [2 x ptr], [4 x ptr], %struct.list_head, %struct.list_head, %struct.v4l2_device, %struct.media_device, %struct.media_entity_operations, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@vsp1_routes = internal constant [25 x %struct.vsp1_route] [%struct.vsp1_route { i32 0, i32 0, i32 8272, [5 x i32] [i32 38, i32 39, i32 0, i32 0, i32 0], i32 0 }, %struct.vsp1_route { i32 1, i32 0, i32 8268, [5 x i32] [i32 23, i32 24, i32 25, i32 26, i32 49], i32 27 }, %struct.vsp1_route { i32 2, i32 0, i32 8256, [5 x i32] [i32 29, i32 0, i32 0, i32 0, i32 0], i32 29 }, %struct.vsp1_route { i32 3, i32 0, i32 0, [5 x i32] zeroinitializer, i32 0 }, %struct.vsp1_route { i32 4, i32 0, i32 0, [5 x i32] zeroinitializer, i32 0 }, %struct.vsp1_route { i32 5, i32 0, i32 8264, [5 x i32] [i32 31, i32 0, i32 0, i32 0, i32 0], i32 31 }, %struct.vsp1_route { i32 6, i32 0, i32 8260, [5 x i32] [i32 30, i32 0, i32 0, i32 0, i32 0], i32 30 }, %struct.vsp1_route { i32 7, i32 0, i32 0, [5 x i32] zeroinitializer, i32 0 }, %struct.vsp1_route { i32 7, i32 1, i32 0, [5 x i32] zeroinitializer, i32 0 }, %struct.vsp1_route { i32 8, i32 0, i32 8252, [5 x i32] [i32 22, i32 0, i32 0, i32 0, i32 0], i32 22 }, %struct.vsp1_route { i32 9, i32 0, i32 8192, [5 x i32] zeroinitializer, i32 0 }, %struct.vsp1_route { i32 9, i32 1, i32 8196, [5 x i32] zeroinitializer, i32 1 }, %struct.vsp1_route { i32 9, i32 2, i32 8200, [5 x i32] zeroinitializer, i32 2 }, %struct.vsp1_route { i32 9, i32 3, i32 8204, [5 x i32] zeroinitializer, i32 3 }, %struct.vsp1_route { i32 9, i32 4, i32 8208, [5 x i32] zeroinitializer, i32 4 }, %struct.vsp1_route { i32 10, i32 0, i32 8228, [5 x i32] [i32 16, i32 0, i32 0, i32 0, i32 0], i32 16 }, %struct.vsp1_route { i32 11, i32 0, i32 8232, [5 x i32] [i32 17, i32 0, i32 0, i32 0, i32 0], i32 17 }, %struct.vsp1_route { i32 11, i32 1, i32 8236, [5 x i32] [i32 18, i32 0, i32 0, i32 0, i32 0], i32 18 }, %struct.vsp1_route { i32 11, i32 2, i32 8240, [5 x i32] [i32 19, i32 0, i32 0, i32 0, i32 0], i32 19 }, %struct.vsp1_route { i32 12, i32 0, i32 8308, [5 x i32] [i32 12, i32 0, i32 0, i32 0, i32 0], i32 12 }, %struct.vsp1_route { i32 12, i32 1, i32 8312, [5 x i32] [i32 13, i32 0, i32 0, i32 0, i32 0], i32 13 }, %struct.vsp1_route { i32 13, i32 0, i32 0, [5 x i32] [i32 56, i32 0, i32 0, i32 0, i32 0], i32 56 }, %struct.vsp1_route { i32 13, i32 1, i32 0, [5 x i32] [i32 57, i32 0, i32 0, i32 0, i32 0], i32 57 }, %struct.vsp1_route { i32 13, i32 2, i32 0, [5 x i32] [i32 58, i32 0, i32 0, i32 0, i32 0], i32 58 }, %struct.vsp1_route { i32 13, i32 3, i32 0, [5 x i32] [i32 59, i32 0, i32 0, i32 0, i32 0], i32 59 }], align 4
@vsp1_entity_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [14 x i8] c"&entity->lock\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"include/media/v4l2-subdev.h\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vsp1_entity_route_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %34 [
    i32 3, label %6
    i32 4, label %20
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.vsp1_pipeline, ptr %1, i32 0, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.vsp1_entity, ptr %11, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = shl i32 %13, 8
  %15 = getelementptr inbounds %struct.vsp1_entity, ptr %9, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.vsp1_route, ptr %16, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, %14
  tail call void @vsp1_dl_body_write(ptr noundef %2, i32 noundef 8276, i32 noundef %19) #10
  br label %52

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 10
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.vsp1_pipeline, ptr %1, i32 0, i32 12
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.vsp1_entity, ptr %25, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = shl i32 %27, 8
  %29 = getelementptr inbounds %struct.vsp1_entity, ptr %23, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.vsp1_route, ptr %30, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = or i32 %32, %28
  tail call void @vsp1_dl_body_write(ptr noundef %2, i32 noundef 8280, i32 noundef %33) #10
  br label %52

34:                                               ; preds = %3
  %35 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.vsp1_route, ptr %36, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 11
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.vsp1_entity, ptr %42, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 12
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr %struct.vsp1_route, ptr %44, i32 0, i32 3, i32 %46
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %5, 0
  %50 = or i32 %48, 268435456
  %51 = select i1 %49, i32 %50, i32 %48
  tail call void @vsp1_dl_body_write(ptr noundef %2, i32 noundef %38, i32 noundef %51) #10
  br label %52

52:                                               ; preds = %40, %34, %20, %6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_dl_body_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vsp1_entity_configure_stream(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.vsp1_entity_operations, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  tail call void %8(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #10
  br label %11

11:                                               ; preds = %10, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vsp1_entity_configure_frame(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.vsp1_entity_operations, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  tail call void %8(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #10
  br label %11

11:                                               ; preds = %10, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vsp1_entity_configure_partition(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.vsp1_entity_operations, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  tail call void %8(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #10
  br label %11

11:                                               ; preds = %10, %4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @vsp1_entity_get_pad_config(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = icmp eq i32 %2, 1
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi ptr [ %7, %5 ], [ %1, %3 ]
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vsp1_entity_get_pad_format(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 13, i32 0, i32 5
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = icmp ugt i32 %6, %2
  br i1 %7, label %9, label %8, !prof !8

8:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 998, i32 noundef 9, ptr noundef null) #10
  br label %9

9:                                                ; preds = %8, %3
  %10 = phi i32 [ 0, %8 ], [ %2, %3 ]
  %11 = load ptr, ptr %1, align 4
  %12 = getelementptr %struct.v4l2_subdev_pad_config, ptr %11, i32 %10
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vsp1_entity_get_pad_selection(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  switch i32 %3, label %25 [
    i32 256, label %5
    i32 0, label %15
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 13, i32 0, i32 5
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = icmp ugt i32 %8, %2
  br i1 %9, label %11, label %10, !prof !8

10:                                               ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1034, i32 noundef 9, ptr noundef null) #10
  br label %11

11:                                               ; preds = %10, %5
  %12 = phi i32 [ 0, %10 ], [ %2, %5 ]
  %13 = load ptr, ptr %1, align 4
  %14 = getelementptr %struct.v4l2_subdev_pad_config, ptr %13, i32 %12, i32 2
  br label %25

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 13, i32 0, i32 5
  %17 = load i16, ptr %16, align 4
  %18 = zext i16 %17 to i32
  %19 = icmp ugt i32 %18, %2
  br i1 %19, label %21, label %20, !prof !8

20:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1016, i32 noundef 9, ptr noundef null) #10
  br label %21

21:                                               ; preds = %20, %15
  %22 = phi i32 [ 0, %20 ], [ %2, %15 ]
  %23 = load ptr, ptr %1, align 4
  %24 = getelementptr %struct.v4l2_subdev_pad_config, ptr %23, i32 %22, i32 1
  br label %25

25:                                               ; preds = %21, %11, %4
  %26 = phi ptr [ %24, %21 ], [ %14, %11 ], [ null, %4 ]
  ret ptr %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vsp1_entity_init_cfg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.v4l2_subdev_format, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 5
  %5 = load i16, ptr %4, align 4
  %6 = icmp eq i16 %5, 1
  br i1 %6, label %42, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %3, i32 0, i32 1
  %9 = icmp eq ptr %1, null
  %10 = zext i1 %9 to i32
  %11 = icmp eq ptr %0, null
  %12 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %13, i32 0, i32 5
  %16 = getelementptr inbounds i8, ptr %3, i32 8
  br label %17

17:                                               ; preds = %36, %7
  %18 = phi i32 [ 0, %7 ], [ %37, %36 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %16, i8 0, i32 80, i1 false)
  store i32 %18, ptr %8, align 4
  store i32 %10, ptr %3, align 4
  br i1 %11, label %36, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %12, align 4
  %21 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %20, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %22, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  br i1 %14, label %32, label %29

29:                                               ; preds = %28
  %30 = load ptr, ptr %15, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %28
  br label %33

33:                                               ; preds = %32, %29
  %34 = phi ptr [ %26, %32 ], [ %30, %29 ]
  %35 = call i32 %34(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3) #10
  br label %36

36:                                               ; preds = %33, %24, %19, %17
  %37 = add nuw i32 %18, 1
  %38 = load i16, ptr %4, align 4
  %39 = zext i16 %38 to i32
  %40 = add nsw i32 %39, -1
  %41 = icmp ult i32 %37, %40
  br i1 %41, label %17, label %42

42:                                               ; preds = %36, %2
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #10
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vsp1_subdev_get_pad_format(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %2, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %0, i32 196
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi ptr [ %8, %6 ], [ %1, %3 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %9
  %13 = getelementptr i8, ptr %0, i32 200
  tail call void @mutex_lock(ptr noundef %13) #10
  %14 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2
  %15 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr i8, ptr %0, i32 32
  %18 = load i16, ptr %17, align 4
  %19 = zext i16 %18 to i32
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %22, label %21, !prof !8

21:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 998, i32 noundef 9, ptr noundef null) #10
  br label %22

22:                                               ; preds = %21, %12
  %23 = phi i32 [ 0, %21 ], [ %16, %12 ]
  %24 = load ptr, ptr %10, align 4
  %25 = getelementptr %struct.v4l2_subdev_pad_config, ptr %24, i32 %23
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %14, ptr noundef align 4 dereferenceable(48) %25, i32 48, i1 false)
  tail call void @mutex_unlock(ptr noundef %13) #10
  br label %26

26:                                               ; preds = %22, %9
  %27 = phi i32 [ 0, %22 ], [ -22, %9 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vsp1_subdev_enum_mbus_code(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = load i32, ptr %2, align 4
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %2, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  br i1 %7, label %10, label %16

10:                                               ; preds = %5
  %11 = icmp ult i32 %9, %4
  br i1 %11, label %12, label %39

12:                                               ; preds = %10
  %13 = getelementptr i32, ptr %3, i32 %9
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %2, i32 0, i32 2
  store i32 %14, ptr %15, align 4
  br label %39

16:                                               ; preds = %5
  %17 = icmp eq i32 %9, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %2, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %0, i32 196
  %24 = load ptr, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi ptr [ %24, %22 ], [ %1, %18 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %25
  %29 = getelementptr i8, ptr %0, i32 200
  tail call void @mutex_lock(ptr noundef %29) #10
  %30 = getelementptr i8, ptr %0, i32 32
  %31 = load i16, ptr %30, align 4
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %34, !prof !9

33:                                               ; preds = %28
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 998, i32 noundef 9, ptr noundef null) #10
  br label %34

34:                                               ; preds = %33, %28
  %35 = load ptr, ptr %26, align 4
  %36 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %35, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %2, i32 0, i32 2
  store i32 %37, ptr %38, align 4
  tail call void @mutex_unlock(ptr noundef %29) #10
  br label %39

39:                                               ; preds = %34, %25, %16, %12, %10
  %40 = phi i32 [ -22, %10 ], [ -22, %25 ], [ -22, %16 ], [ 0, %34 ], [ 0, %12 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vsp1_subdev_enum_frame_size(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %0, i32 196
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi ptr [ %13, %11 ], [ %1, %7 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %59, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %0, i32 32
  %21 = load i16, ptr %20, align 4
  %22 = zext i16 %21 to i32
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %25, label %24, !prof !8

24:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 998, i32 noundef 9, ptr noundef null) #10
  br label %25

25:                                               ; preds = %24, %17
  %26 = phi i32 [ 0, %24 ], [ %19, %17 ]
  %27 = load ptr, ptr %15, align 4
  %28 = getelementptr %struct.v4l2_subdev_pad_config, ptr %27, i32 %26
  %29 = getelementptr i8, ptr %0, i32 200
  tail call void @mutex_lock(ptr noundef %29) #10
  %30 = load i32, ptr %2, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %28, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %32
  %39 = load i32, ptr %18, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 3
  store i32 %3, ptr %42, align 4
  %43 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 4
  store i32 %5, ptr %43, align 4
  %44 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 5
  store i32 %4, ptr %44, align 4
  br label %54

45:                                               ; preds = %38
  %46 = load i32, ptr %28, align 4
  %47 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 3
  store i32 %46, ptr %47, align 4
  %48 = load i32, ptr %28, align 4
  %49 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 4
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %28, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 5
  store i32 %51, ptr %52, align 4
  %53 = load i32, ptr %50, align 4
  br label %54

54:                                               ; preds = %45, %41
  %55 = phi i32 [ %6, %41 ], [ %53, %45 ]
  %56 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 6
  store i32 %55, ptr %56, align 4
  br label %57

57:                                               ; preds = %54, %32, %25
  %58 = phi i32 [ -22, %32 ], [ -22, %25 ], [ 0, %54 ]
  tail call void @mutex_unlock(ptr noundef %29) #10
  br label %59

59:                                               ; preds = %57, %14
  %60 = phi i32 [ %58, %57 ], [ -22, %14 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vsp1_subdev_set_pad_format(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = getelementptr i8, ptr %0, i32 200
  tail call void @mutex_lock(ptr noundef %10) #10
  %11 = load i32, ptr %2, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %0, i32 196
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi ptr [ %15, %13 ], [ %1, %9 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %106, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr i8, ptr %0, i32 32
  %23 = load i16, ptr %22, align 4
  %24 = zext i16 %23 to i32
  %25 = icmp ult i32 %21, %24
  br i1 %25, label %28, label %26, !prof !8

26:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 998, i32 noundef 9, ptr noundef null) #10
  %27 = load i32, ptr %20, align 4
  br label %28

28:                                               ; preds = %26, %19
  %29 = phi i32 [ %27, %26 ], [ %21, %19 ]
  %30 = phi i32 [ 0, %26 ], [ %21, %19 ]
  %31 = load ptr, ptr %17, align 4
  %32 = getelementptr %struct.v4l2_subdev_pad_config, ptr %31, i32 %30
  %33 = getelementptr i8, ptr %0, i32 -16
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %29, %34
  br i1 %35, label %41, label %36

36:                                               ; preds = %28
  %37 = icmp eq i32 %4, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 2
  %40 = load i32, ptr %39, align 4
  br label %43

41:                                               ; preds = %28
  %42 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %42, ptr noundef align 4 dereferenceable(48) %32, i32 48, i1 false)
  br label %106

43:                                               ; preds = %48, %38
  %44 = phi i32 [ 0, %38 ], [ %49, %48 ]
  %45 = getelementptr i32, ptr %3, i32 %44
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %40, %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = add nuw i32 %44, 1
  %50 = icmp eq i32 %49, %4
  br i1 %50, label %53, label %43

51:                                               ; preds = %43
  %52 = getelementptr i32, ptr %3, i32 %44
  br label %53

53:                                               ; preds = %51, %48, %36
  %54 = phi ptr [ %3, %36 ], [ %52, %51 ], [ %3, %48 ]
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %32, i32 0, i32 2
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = tail call i32 @llvm.umax.i32(i32 %58, i32 %5)
  %60 = tail call i32 @llvm.umin.i32(i32 %59, i32 %7)
  store i32 %60, ptr %32, align 4
  %61 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = tail call i32 @llvm.umax.i32(i32 %62, i32 %6)
  %64 = tail call i32 @llvm.umin.i32(i32 %63, i32 %8)
  %65 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %32, i32 0, i32 1
  store i32 %64, ptr %65, align 4
  %66 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %32, i32 0, i32 3
  store i32 1, ptr %66, align 4
  %67 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %32, i32 0, i32 4
  store i32 8, ptr %67, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %57, ptr noundef align 4 dereferenceable(48) %32, i32 48, i1 false)
  %68 = load i32, ptr %33, align 4
  %69 = load i16, ptr %22, align 4
  %70 = zext i16 %69 to i32
  %71 = icmp ult i32 %68, %70
  br i1 %71, label %73, label %72, !prof !8

72:                                               ; preds = %53
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 998, i32 noundef 9, ptr noundef null) #10
  br label %73

73:                                               ; preds = %72, %53
  %74 = phi i32 [ 0, %72 ], [ %68, %53 ]
  %75 = load ptr, ptr %17, align 4
  %76 = getelementptr %struct.v4l2_subdev_pad_config, ptr %75, i32 %74
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %76, ptr noundef align 4 dereferenceable(48) %57, i32 48, i1 false)
  %77 = load i32, ptr %20, align 4
  %78 = load i16, ptr %22, align 4
  %79 = zext i16 %78 to i32
  %80 = icmp ult i32 %77, %79
  br i1 %80, label %82, label %81, !prof !8

81:                                               ; preds = %73
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1016, i32 noundef 9, ptr noundef null) #10
  br label %82

82:                                               ; preds = %81, %73
  %83 = phi i32 [ 0, %81 ], [ %77, %73 ]
  %84 = load ptr, ptr %17, align 4
  %85 = getelementptr %struct.v4l2_subdev_pad_config, ptr %84, i32 %83, i32 1
  store i32 0, ptr %85, align 4
  %86 = getelementptr %struct.v4l2_subdev_pad_config, ptr %84, i32 %83, i32 1, i32 1
  store i32 0, ptr %86, align 4
  %87 = load i32, ptr %76, align 4
  %88 = getelementptr %struct.v4l2_subdev_pad_config, ptr %84, i32 %83, i32 1, i32 2
  store i32 %87, ptr %88, align 4
  %89 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %76, i32 0, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr %struct.v4l2_subdev_pad_config, ptr %84, i32 %83, i32 1, i32 3
  store i32 %90, ptr %91, align 4
  %92 = load i32, ptr %20, align 4
  %93 = load i16, ptr %22, align 4
  %94 = zext i16 %93 to i32
  %95 = icmp ult i32 %92, %94
  br i1 %95, label %97, label %96, !prof !8

96:                                               ; preds = %82
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1034, i32 noundef 9, ptr noundef null) #10
  br label %97

97:                                               ; preds = %96, %82
  %98 = phi i32 [ 0, %96 ], [ %92, %82 ]
  %99 = load ptr, ptr %17, align 4
  %100 = getelementptr %struct.v4l2_subdev_pad_config, ptr %99, i32 %98, i32 2
  store i32 0, ptr %100, align 4
  %101 = getelementptr %struct.v4l2_subdev_pad_config, ptr %99, i32 %98, i32 2, i32 1
  store i32 0, ptr %101, align 4
  %102 = load i32, ptr %76, align 4
  %103 = getelementptr %struct.v4l2_subdev_pad_config, ptr %99, i32 %98, i32 2, i32 2
  store i32 %102, ptr %103, align 4
  %104 = load i32, ptr %89, align 4
  %105 = getelementptr %struct.v4l2_subdev_pad_config, ptr %99, i32 %98, i32 2, i32 3
  store i32 %104, ptr %105, align 4
  br label %106

106:                                              ; preds = %97, %41, %16
  %107 = phi i32 [ 0, %41 ], [ 0, %97 ], [ -22, %16 ]
  tail call void @mutex_unlock(ptr noundef %10) #10
  ret i32 %107
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @vsp1_entity_link_setup(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #6 {
  %5 = getelementptr inbounds %struct.media_pad, ptr %1, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.media_pad, ptr %1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  br i1 %8, label %39, label %11

11:                                               ; preds = %4
  %12 = getelementptr i8, ptr %10, i32 -44
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %56, label %15

15:                                               ; preds = %11
  %16 = and i32 %3, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %34, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.media_pad, ptr %2, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 -60
  %22 = getelementptr i8, ptr %20, i32 -52
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, -3
  %25 = icmp ult i32 %24, 2
  br i1 %25, label %56, label %26

26:                                               ; preds = %18
  %27 = getelementptr i8, ptr %10, i32 -8
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %56

30:                                               ; preds = %26
  store ptr %21, ptr %27, align 4
  %31 = getelementptr inbounds %struct.media_pad, ptr %2, i32 0, i32 2
  %32 = load i16, ptr %31, align 4
  %33 = zext i16 %32 to i32
  br label %36

34:                                               ; preds = %15
  %35 = getelementptr i8, ptr %10, i32 -8
  store ptr null, ptr %35, align 4
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi i32 [ 0, %34 ], [ %33, %30 ]
  %38 = getelementptr i8, ptr %10, i32 -4
  store i32 %37, ptr %38, align 4
  br label %56

39:                                               ; preds = %4
  %40 = and i32 %3, 1
  %41 = icmp eq i32 %40, 0
  %42 = getelementptr i8, ptr %10, i32 -12
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.media_pad, ptr %1, i32 0, i32 2
  %45 = load i16, ptr %44, align 4
  %46 = zext i16 %45 to i32
  %47 = getelementptr ptr, ptr %43, i32 %46
  br i1 %41, label %54, label %48

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.media_pad, ptr %2, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 -60
  %52 = load ptr, ptr %47, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %48, %39
  %55 = phi ptr [ %51, %48 ], [ null, %39 ]
  store ptr %55, ptr %47, align 4
  br label %56

56:                                               ; preds = %54, %48, %36, %26, %18, %11
  %57 = phi i32 [ 0, %11 ], [ 0, %18 ], [ -16, %26 ], [ 0, %36 ], [ -16, %48 ], [ 0, %54 ]
  ret i32 %57
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @vsp1_entity_remote_pad(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.media_pad, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.media_entity, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %37, label %7

7:                                                ; preds = %34, %1
  %8 = phi ptr [ %35, %34 ], [ %5, %1 ]
  %9 = getelementptr i8, ptr %8, i32 20
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %34, label %13

13:                                               ; preds = %7
  %14 = getelementptr i8, ptr %8, i32 12
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %0
  %17 = getelementptr i8, ptr %8, i32 8
  %18 = load ptr, ptr %17, align 4
  br i1 %16, label %37, label %19

19:                                               ; preds = %13
  %20 = icmp eq ptr %18, %0
  br i1 %20, label %21, label %34

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.media_pad, ptr %15, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.media_entity, ptr %23, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %23, i32 -52
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, -3
  %33 = icmp ult i32 %32, 2
  br i1 %33, label %34, label %37

34:                                               ; preds = %29, %19, %7
  %35 = load ptr, ptr %8, align 4
  %36 = icmp eq ptr %35, %4
  br i1 %36, label %37, label %7

37:                                               ; preds = %34, %29, %25, %21, %13, %1
  %38 = phi ptr [ null, %1 ], [ null, %34 ], [ %15, %25 ], [ %15, %21 ], [ %15, %29 ], [ %18, %13 ]
  ret ptr %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vsp1_entity_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.v4l2_subdev_format, align 4
  %8 = getelementptr inbounds %struct.vsp1_entity, ptr %1, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.vsp1_entity, ptr %1, i32 0, i32 3
  br label %11

11:                                               ; preds = %21, %6
  %12 = phi i32 [ 0, %6 ], [ %22, %21 ]
  %13 = getelementptr [25 x %struct.vsp1_route], ptr @vsp1_routes, i32 0, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %9
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = getelementptr [25 x %struct.vsp1_route], ptr @vsp1_routes, i32 0, i32 %12, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %10, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %16, %11
  %22 = add nuw nsw i32 %12, 1
  %23 = icmp eq i32 %22, 25
  br i1 %23, label %133, label %11

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.vsp1_entity, ptr %1, i32 0, i32 4
  store ptr %13, ptr %25, align 4
  %26 = getelementptr inbounds %struct.vsp1_entity, ptr %1, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %26, ptr noundef nonnull @.str, ptr noundef nonnull @vsp1_entity_init.__key) #10
  store ptr %0, ptr %1, align 4
  %27 = add i32 %3, -1
  %28 = getelementptr inbounds %struct.vsp1_entity, ptr %1, i32 0, i32 9
  store i32 %27, ptr %28, align 4
  %29 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 32) #10
  %30 = extractvalue { i32, i1 } %29, 1
  br i1 %30, label %31, label %33, !prof !9

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.vsp1_entity, ptr %1, i32 0, i32 8
  store ptr null, ptr %32, align 4
  br label %133

33:                                               ; preds = %24
  %34 = load ptr, ptr %0, align 8
  %35 = extractvalue { i32, i1 } %29, 0
  %36 = tail call noalias ptr @devm_kmalloc(ptr noundef %34, i32 noundef %35, i32 noundef 3520) #10
  %37 = getelementptr inbounds %struct.vsp1_entity, ptr %1, i32 0, i32 8
  store ptr %36, ptr %37, align 4
  %38 = icmp eq ptr %36, null
  br i1 %38, label %133, label %39

39:                                               ; preds = %33
  %40 = icmp eq i32 %27, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %39
  %42 = getelementptr %struct.media_pad, ptr %36, i32 0, i32 4
  store i32 1, ptr %42, align 4
  %43 = icmp eq i32 %27, 1
  br i1 %43, label %50, label %44

44:                                               ; preds = %44, %41
  %45 = phi i32 [ %48, %44 ], [ 1, %41 ]
  %46 = load ptr, ptr %37, align 4
  %47 = getelementptr %struct.media_pad, ptr %46, i32 %45, i32 4
  store i32 1, ptr %47, align 4
  %48 = add nuw i32 %45, 1
  %49 = icmp eq i32 %48, %27
  br i1 %49, label %50, label %44

50:                                               ; preds = %44, %41, %39
  %51 = tail call i32 @llvm.umax.i32(i32 %27, i32 1)
  %52 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %51, i32 4) #10
  %53 = extractvalue { i32, i1 } %52, 1
  br i1 %53, label %54, label %56, !prof !9

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.vsp1_entity, ptr %1, i32 0, i32 10
  store ptr null, ptr %55, align 4
  br label %133

56:                                               ; preds = %50
  %57 = load ptr, ptr %0, align 8
  %58 = extractvalue { i32, i1 } %52, 0
  %59 = tail call noalias ptr @devm_kmalloc(ptr noundef %57, i32 noundef %58, i32 noundef 3520) #10
  %60 = getelementptr inbounds %struct.vsp1_entity, ptr %1, i32 0, i32 10
  store ptr %59, ptr %60, align 4
  %61 = icmp eq ptr %59, null
  br i1 %61, label %133, label %62

62:                                               ; preds = %56
  %63 = icmp ugt i32 %3, 1
  %64 = select i1 %63, i32 2, i32 1
  %65 = load ptr, ptr %37, align 4
  %66 = getelementptr %struct.media_pad, ptr %65, i32 %27, i32 4
  store i32 %64, ptr %66, align 4
  %67 = getelementptr inbounds %struct.vsp1_entity, ptr %1, i32 0, i32 13
  %68 = trunc i32 %3 to i16
  %69 = load ptr, ptr %37, align 4
  %70 = tail call i32 @media_entity_pads_init(ptr noundef %67, i16 noundef zeroext %68, ptr noundef %69) #10
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %133, label %72

72:                                               ; preds = %62
  tail call void @v4l2_subdev_init(ptr noundef %67, ptr noundef %4) #10
  %73 = getelementptr inbounds %struct.vsp1_entity, ptr %1, i32 0, i32 13, i32 0, i32 3
  store i32 %5, ptr %73, align 4
  %74 = getelementptr inbounds %struct.vsp1_device, ptr %0, i32 0, i32 24
  %75 = getelementptr inbounds %struct.vsp1_entity, ptr %1, i32 0, i32 13, i32 0, i32 11
  store ptr %74, ptr %75, align 4
  %76 = getelementptr inbounds %struct.vsp1_entity, ptr %1, i32 0, i32 13, i32 4
  %77 = load i32, ptr %76, align 4
  %78 = or i32 %77, 4
  store i32 %78, ptr %76, align 4
  %79 = getelementptr inbounds %struct.vsp1_entity, ptr %1, i32 0, i32 13, i32 9
  %80 = load ptr, ptr %0, align 8
  %81 = getelementptr inbounds %struct.device, ptr %80, i32 0, i32 3
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %72
  %85 = load ptr, ptr %80, align 4
  br label %86

86:                                               ; preds = %84, %72
  %87 = phi ptr [ %85, %84 ], [ %82, %72 ]
  %88 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %79, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef %87, ptr noundef %2)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %7) #10
  %89 = getelementptr inbounds %struct.vsp1_entity, ptr %1, i32 0, i32 13, i32 0, i32 5
  %90 = load i16, ptr %89, align 4
  %91 = icmp eq i16 %90, 1
  br i1 %91, label %127, label %92

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %7, i32 0, i32 1
  %94 = icmp eq ptr %67, null
  %95 = getelementptr inbounds %struct.vsp1_entity, ptr %1, i32 0, i32 13, i32 6
  %96 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %97 = icmp eq ptr %96, null
  %98 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %96, i32 0, i32 5
  %99 = getelementptr inbounds i8, ptr %7, i32 8
  br label %100

100:                                              ; preds = %121, %92
  %101 = phi i16 [ %90, %92 ], [ %122, %121 ]
  %102 = phi i32 [ 0, %92 ], [ %123, %121 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %99, i8 0, i32 80, i1 false) #10
  store i32 %102, ptr %93, align 4
  store i32 1, ptr %7, align 4
  br i1 %94, label %121, label %103

103:                                              ; preds = %100
  %104 = load ptr, ptr %95, align 4
  %105 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %104, i32 0, i32 7
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %121, label %108

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %106, i32 0, i32 5
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %121, label %112

112:                                              ; preds = %108
  br i1 %97, label %116, label %113

113:                                              ; preds = %112
  %114 = load ptr, ptr %98, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %113, %112
  br label %117

117:                                              ; preds = %116, %113
  %118 = phi ptr [ %110, %116 ], [ %114, %113 ]
  %119 = call i32 %118(ptr noundef nonnull %67, ptr noundef null, ptr noundef nonnull %7) #10
  %120 = load i16, ptr %89, align 4
  br label %121

121:                                              ; preds = %117, %108, %103, %100
  %122 = phi i16 [ %120, %117 ], [ %101, %108 ], [ %101, %103 ], [ %101, %100 ]
  %123 = add nuw i32 %102, 1
  %124 = zext i16 %122 to i32
  %125 = add nsw i32 %124, -1
  %126 = icmp ult i32 %123, %125
  br i1 %126, label %100, label %127

127:                                              ; preds = %121, %86
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %7) #10
  %128 = call ptr @v4l2_subdev_alloc_state(ptr noundef %67) #10
  %129 = getelementptr inbounds %struct.vsp1_entity, ptr %1, i32 0, i32 14
  store ptr %128, ptr %129, align 4
  %130 = icmp ugt ptr %128, inttoptr (i32 -4096 to ptr)
  %131 = ptrtoint ptr %128 to i32
  %132 = select i1 %130, i32 %131, i32 0
  br label %133

133:                                              ; preds = %127, %62, %56, %54, %33, %31, %21
  %134 = phi i32 [ -12, %33 ], [ -12, %56 ], [ %70, %62 ], [ -12, %31 ], [ -12, %54 ], [ %132, %127 ], [ -22, %21 ]
  ret i32 %134
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_subdev_alloc_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vsp1_entity_destroy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void %6(ptr noundef %0) #10
  br label %9

9:                                                ; preds = %8, %5, %1
  %10 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 13, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @v4l2_ctrl_handler_free(ptr noundef nonnull %11) #10
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 14
  %16 = load ptr, ptr %15, align 4
  tail call void @v4l2_subdev_free_state(ptr noundef %16) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_free_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
