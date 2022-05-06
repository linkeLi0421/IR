; ModuleID = '/llk/IR/drivers/media/platform/vsp1/vsp1_uds.c_pt.bc'
source_filename = "../drivers/media/platform/vsp1/vsp1_uds.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vsp1_entity_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.71, i16, i16, i16, [10 x i16] }
%union.anon.71 = type { i16 }
%struct.vsp1_uds = type { %struct.vsp1_entity, i8 }
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
%struct.vsp1_partition = type { %struct.vsp1_partition_window, %struct.vsp1_partition_window, %struct.vsp1_partition_window, %struct.vsp1_partition_window, %struct.vsp1_partition_window }
%struct.vsp1_partition_window = type { i32, i32 }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }

@uds_entity_ops = internal constant %struct.vsp1_entity_operations { ptr null, ptr @uds_configure_stream, ptr null, ptr @uds_configure_partition, ptr @uds_max_width, ptr @uds_partition }, align 4
@.str = private unnamed_addr constant [7 x i8] c"uds.%u\00", align 1
@uds_ops = internal constant %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uds_pad_ops }, align 4
@uds_pad_ops = internal constant %struct.v4l2_subdev_pad_ops { ptr @vsp1_entity_init_cfg, ptr @uds_enum_mbus_code, ptr @uds_enum_frame_size, ptr null, ptr @vsp1_subdev_get_pad_format, ptr @uds_set_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@uds_enum_mbus_code.codes = internal constant [2 x i32] [i32 4109, i32 8215], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vsp1_uds_set_alpha(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 %5, 8
  %7 = add i32 %6, 8972
  tail call void @vsp1_dl_body_write(ptr noundef %1, i32 noundef %7, i32 noundef %2) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vsp1_uds_create(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false), !annotation !8
  %4 = load ptr, ptr %0, align 8
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 284, i32 noundef 3520) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.vsp1_entity, ptr %5, i32 0, i32 1
  store ptr @uds_entity_ops, ptr %8, align 4
  %9 = getelementptr inbounds %struct.vsp1_entity, ptr %5, i32 0, i32 2
  store i32 11, ptr %9, align 4
  %10 = getelementptr inbounds %struct.vsp1_entity, ptr %5, i32 0, i32 3
  store i32 %1, ptr %10, align 4
  %11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str, i32 noundef %1)
  %12 = call i32 @vsp1_entity_init(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %3, i32 noundef 2, ptr noundef nonnull @uds_ops, i32 noundef 16389) #7
  %13 = icmp slt i32 %12, 0
  %14 = inttoptr i32 %12 to ptr
  %15 = select i1 %13, ptr %14, ptr %5
  br label %16

16:                                               ; preds = %7, %2
  %17 = phi ptr [ inttoptr (i32 -12 to ptr), %2 ], [ %15, %7 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #7
  ret ptr %17
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_entity_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_dl_body_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uds_configure_stream(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %0, ptr noundef %6, i32 noundef 0) #7
  %8 = load ptr, ptr %5, align 4
  %9 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %0, ptr noundef %8, i32 noundef 1) #7
  %10 = load i32, ptr %7, align 4
  %11 = load i32, ptr %9, align 4
  %12 = shl i32 %10, 12
  %13 = add i32 %12, -4096
  %14 = add i32 %11, -1
  %15 = udiv i32 %13, %14
  %16 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %7, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %9, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = shl i32 %17, 12
  %21 = add i32 %20, -4096
  %22 = add i32 %19, -1
  %23 = udiv i32 %21, %22
  %24 = getelementptr inbounds %struct.vsp1_uds, ptr %0, i32 0, i32 1
  %25 = load i8, ptr %24, align 4, !range !9
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %4
  %28 = icmp ugt i32 %15, 8191
  %29 = icmp ugt i32 %23, 8191
  %30 = select i1 %28, i1 true, i1 %29
  br i1 %30, label %32, label %31

31:                                               ; preds = %27, %4
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi i32 [ 1048576, %31 ], [ 0, %27 ]
  %34 = select i1 %26, i32 0, i32 33554432
  %35 = or i32 %33, %34
  %36 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = shl i32 %37, 8
  %39 = add i32 %38, 8960
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %39, i32 noundef %35) #7
  %40 = icmp ugt i32 %15, 4095
  br i1 %40, label %41, label %48

41:                                               ; preds = %32
  %42 = icmp ult i32 %15, 16384
  %43 = icmp ult i32 %15, 32768
  %44 = select i1 %43, i32 524288, i32 1048576
  %45 = select i1 %42, i32 262144, i32 %44
  %46 = udiv i32 %45, %15
  %47 = shl nuw nsw i32 %46, 16
  br label %48

48:                                               ; preds = %41, %32
  %49 = phi i32 [ %47, %41 ], [ 4194304, %32 ]
  %50 = icmp ugt i32 %23, 4095
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = icmp ult i32 %23, 16384
  %53 = icmp ult i32 %23, 32768
  %54 = select i1 %53, i32 524288, i32 1048576
  %55 = select i1 %52, i32 262144, i32 %54
  %56 = udiv i32 %55, %23
  br label %57

57:                                               ; preds = %51, %48
  %58 = phi i32 [ %56, %51 ], [ 64, %48 ]
  %59 = or i32 %58, %49
  %60 = load i32, ptr %36, align 4
  %61 = shl i32 %60, 8
  %62 = add i32 %61, 8976
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %62, i32 noundef %59) #7
  %63 = shl i32 %15, 16
  %64 = or i32 %23, %63
  %65 = load i32, ptr %36, align 4
  %66 = shl i32 %65, 8
  %67 = add i32 %66, 8964
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %67, i32 noundef %64) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uds_configure_partition(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.vsp1_pipeline, ptr %1, i32 0, i32 24
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 14
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %0, ptr noundef %8, i32 noundef 1) #7
  %10 = getelementptr inbounds %struct.vsp1_partition, ptr %6, i32 0, i32 1, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = or i32 %11, 268435456
  %13 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = shl i32 %14, 8
  %16 = add i32 %15, 8988
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %16, i32 noundef %12) #7
  %17 = getelementptr inbounds %struct.vsp1_partition, ptr %6, i32 0, i32 2, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = shl i32 %18, 16
  %20 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %9, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = or i32 %19, %21
  %23 = load i32, ptr %13, align 4
  %24 = shl i32 %23, 8
  %25 = add i32 %24, 8996
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %25, i32 noundef %22) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uds_max_width(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %0, ptr noundef %4, i32 noundef 0) #7
  %6 = load ptr, ptr %3, align 4
  %7 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %0, ptr noundef %6, i32 noundef 1) #7
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr %5, align 4
  %10 = udiv i32 %8, %9
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = icmp ult i32 %10, 5
  br i1 %13, label %17, label %14

14:                                               ; preds = %12
  %15 = icmp ult i32 %10, 9
  %16 = select i1 %15, i32 1024, i32 2048
  br label %17

17:                                               ; preds = %14, %12, %2
  %18 = phi i32 [ 256, %2 ], [ 512, %12 ], [ %16, %14 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uds_partition(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2, i32 noundef %3, ptr nocapture noundef %4) #0 {
  %6 = getelementptr inbounds %struct.vsp1_partition, ptr %2, i32 0, i32 1
  %7 = load i64, ptr %4, align 4
  store i64 %7, ptr %6, align 4
  %8 = getelementptr inbounds %struct.vsp1_partition, ptr %2, i32 0, i32 2
  %9 = load i64, ptr %4, align 4
  store i64 %9, ptr %8, align 4
  %10 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 14
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %0, ptr noundef %11, i32 noundef 0) #7
  %13 = load ptr, ptr %10, align 4
  %14 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %0, ptr noundef %13, i32 noundef 1) #7
  %15 = getelementptr inbounds %struct.vsp1_partition_window, ptr %4, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr %12, align 4
  %18 = mul i32 %17, %16
  %19 = load i32, ptr %14, align 4
  %20 = udiv i32 %18, %19
  %21 = getelementptr inbounds %struct.vsp1_partition, ptr %2, i32 0, i32 1, i32 1
  store i32 %20, ptr %21, align 4
  %22 = load i32, ptr %4, align 4
  %23 = load i32, ptr %12, align 4
  %24 = mul i32 %23, %22
  %25 = load i32, ptr %14, align 4
  %26 = udiv i32 %24, %25
  store i32 %26, ptr %6, align 4
  %27 = load i64, ptr %6, align 4
  store i64 %27, ptr %4, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_entity_get_pad_format(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_entity_init_cfg(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uds_enum_mbus_code(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @vsp1_subdev_enum_mbus_code(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @uds_enum_mbus_code.codes, i32 noundef 2) #7
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uds_enum_frame_size(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -60
  %5 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = tail call ptr @vsp1_entity_get_pad_config(ptr noundef %4, ptr noundef %1, i32 noundef %6) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %57, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %4, ptr noundef nonnull %7, i32 noundef 0) #7
  %11 = getelementptr i8, ptr %0, i32 200
  tail call void @mutex_lock(ptr noundef %11) #7
  %12 = load i32, ptr %2, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %55

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %10, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %55

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 3
  store i32 4, ptr %25, align 4
  %26 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 4
  store i32 8190, ptr %26, align 4
  %27 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 5
  store i32 4, ptr %27, align 4
  %28 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 6
  store i32 8190, ptr %28, align 4
  br label %55

29:                                               ; preds = %20
  %30 = load i32, ptr %10, align 4
  %31 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 3
  %32 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 4
  %33 = shl i32 %30, 12
  %34 = add i32 %33, -4096
  %35 = and i32 %34, -16384
  %36 = udiv i32 %35, 65535
  %37 = tail call i32 @llvm.umax.i32(i32 %36, i32 3) #7
  %38 = add nuw nsw i32 %37, 1
  store i32 %38, ptr %31, align 4
  %39 = lshr exact i32 %34, 8
  %40 = or i32 %39, 1
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 8190) #7
  store i32 %41, ptr %32, align 4
  %42 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %10, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 5
  %45 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 6
  %46 = shl i32 %43, 12
  %47 = add i32 %46, -4096
  %48 = and i32 %47, -16384
  %49 = udiv i32 %48, 65535
  %50 = tail call i32 @llvm.umax.i32(i32 %49, i32 3) #7
  %51 = add nuw nsw i32 %50, 1
  store i32 %51, ptr %44, align 4
  %52 = lshr exact i32 %47, 8
  %53 = or i32 %52, 1
  %54 = tail call i32 @llvm.umin.i32(i32 %53, i32 8190) #7
  store i32 %54, ptr %45, align 4
  br label %55

55:                                               ; preds = %29, %24, %14, %9
  %56 = phi i32 [ 0, %24 ], [ 0, %29 ], [ -22, %14 ], [ -22, %9 ]
  tail call void @mutex_unlock(ptr noundef %11) #7
  br label %57

57:                                               ; preds = %55, %3
  %58 = phi i32 [ %56, %55 ], [ -22, %3 ]
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_get_pad_format(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uds_set_format(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -60
  %5 = getelementptr i8, ptr %0, i32 200
  tail call void @mutex_lock(ptr noundef %5) #7
  %6 = load i32, ptr %2, align 4
  %7 = tail call ptr @vsp1_entity_get_pad_config(ptr noundef %4, ptr noundef %1, i32 noundef %6) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %53, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2
  tail call fastcc void @uds_try_format(ptr noundef %4, ptr noundef nonnull %7, i32 noundef %11, ptr noundef %12)
  %13 = load i32, ptr %10, align 4
  %14 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %4, ptr noundef nonnull %7, i32 noundef %13) #7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %14, ptr noundef align 4 dereferenceable(48) %12, i32 48, i1 false)
  %15 = load i32, ptr %10, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %53

17:                                               ; preds = %9
  %18 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %4, ptr noundef nonnull %7, i32 noundef 1) #7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %18, ptr noundef align 4 dereferenceable(48) %12, i32 48, i1 false)
  %19 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %4, ptr noundef nonnull %7, i32 noundef 0) #7
  %20 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %19, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %18, i32 0, i32 2
  store i32 %21, ptr %22, align 4
  %23 = load i32, ptr %19, align 4
  %24 = shl i32 %23, 12
  %25 = add i32 %24, -4096
  %26 = and i32 %25, -16384
  %27 = udiv i32 %26, 65535
  %28 = tail call i32 @llvm.umax.i32(i32 %27, i32 3) #7
  %29 = add nuw nsw i32 %28, 1
  %30 = lshr exact i32 %25, 8
  %31 = or i32 %30, 1
  %32 = load i32, ptr %18, align 4
  %33 = tail call i32 @llvm.umax.i32(i32 %32, i32 %29) #7
  %34 = tail call i32 @llvm.umin.i32(i32 %31, i32 %33) #7
  %35 = tail call i32 @llvm.umin.i32(i32 %34, i32 8190) #7
  store i32 %35, ptr %18, align 4
  %36 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %19, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = shl i32 %37, 12
  %39 = add i32 %38, -4096
  %40 = and i32 %39, -16384
  %41 = udiv i32 %40, 65535
  %42 = tail call i32 @llvm.umax.i32(i32 %41, i32 3) #7
  %43 = add nuw nsw i32 %42, 1
  %44 = lshr exact i32 %39, 8
  %45 = or i32 %44, 1
  %46 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %18, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = tail call i32 @llvm.umax.i32(i32 %47, i32 %43) #7
  %49 = tail call i32 @llvm.umin.i32(i32 %45, i32 %48) #7
  %50 = tail call i32 @llvm.umin.i32(i32 %49, i32 8190) #7
  store i32 %50, ptr %46, align 4
  %51 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %18, i32 0, i32 3
  store i32 1, ptr %51, align 4
  %52 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %18, i32 0, i32 4
  store i32 8, ptr %52, align 4
  br label %53

53:                                               ; preds = %17, %9, %3
  %54 = phi i32 [ 0, %17 ], [ 0, %9 ], [ -22, %3 ]
  tail call void @mutex_unlock(ptr noundef %5) #7
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_enum_mbus_code(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_entity_get_pad_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @uds_try_format(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  switch i32 %2, label %52 [
    i32 0, label %5
    i32 1, label %16
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %3, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %8 [
    i32 4109, label %9
    i32 8215, label %9
  ]

8:                                                ; preds = %5
  store i32 8215, ptr %6, align 4
  br label %9

9:                                                ; preds = %8, %5, %5
  %10 = load i32, ptr %3, align 4
  %11 = tail call i32 @llvm.umax.i32(i32 %10, i32 4)
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 8190)
  store i32 %12, ptr %3, align 4
  %13 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %3, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @llvm.umax.i32(i32 %14, i32 4)
  br label %48

16:                                               ; preds = %4
  %17 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %0, ptr noundef %1, i32 noundef 0) #7
  %18 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %3, i32 0, i32 2
  store i32 %19, ptr %20, align 4
  %21 = load i32, ptr %17, align 4
  %22 = shl i32 %21, 12
  %23 = add i32 %22, -4096
  %24 = and i32 %23, -16384
  %25 = udiv i32 %24, 65535
  %26 = tail call i32 @llvm.umax.i32(i32 %25, i32 3) #7
  %27 = add nuw nsw i32 %26, 1
  %28 = lshr exact i32 %23, 8
  %29 = or i32 %28, 1
  %30 = load i32, ptr %3, align 4
  %31 = tail call i32 @llvm.umax.i32(i32 %30, i32 %27)
  %32 = tail call i32 @llvm.umin.i32(i32 %29, i32 %31)
  %33 = tail call i32 @llvm.umin.i32(i32 %32, i32 8190)
  store i32 %33, ptr %3, align 4
  %34 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %17, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = shl i32 %35, 12
  %37 = add i32 %36, -4096
  %38 = and i32 %37, -16384
  %39 = udiv i32 %38, 65535
  %40 = tail call i32 @llvm.umax.i32(i32 %39, i32 3) #7
  %41 = add nuw nsw i32 %40, 1
  %42 = lshr exact i32 %37, 8
  %43 = or i32 %42, 1
  %44 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %3, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = tail call i32 @llvm.umax.i32(i32 %45, i32 %41)
  %47 = tail call i32 @llvm.umin.i32(i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %16, %9
  %49 = phi i32 [ %47, %16 ], [ %15, %9 ]
  %50 = phi ptr [ %44, %16 ], [ %13, %9 ]
  %51 = tail call i32 @llvm.umin.i32(i32 %49, i32 8190)
  store i32 %51, ptr %50, align 4
  br label %52

52:                                               ; preds = %48, %4
  %53 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %3, i32 0, i32 3
  store i32 1, ptr %53, align 4
  %54 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %3, i32 0, i32 4
  store i32 8, ptr %54, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
