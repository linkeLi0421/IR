; ModuleID = '/llk/IR/drivers/media/platform/vsp1/vsp1_sru.c_pt.bc'
source_filename = "../drivers/media/platform/vsp1/vsp1_sru.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vsp1_entity_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.vsp1_sru_param = type { i32, i32 }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
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
%struct.vsp1_sru = type { %struct.vsp1_entity, %struct.v4l2_ctrl_handler, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.74, i16, i16, i16, [10 x i16] }
%union.anon.74 = type { i16 }
%struct.vsp1_partition_window = type { i32, i32 }
%struct.vsp1_partition = type { %struct.vsp1_partition_window, %struct.vsp1_partition_window, %struct.vsp1_partition_window, %struct.vsp1_partition_window, %struct.vsp1_partition_window }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.70, %union.anon.71, i32, ptr, i32, %struct.anon.72, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.70 = type { i64 }
%union.anon.71 = type { ptr }
%struct.anon.72 = type { i32 }

@sru_entity_ops = internal constant %struct.vsp1_entity_operations { ptr null, ptr @sru_configure_stream, ptr null, ptr null, ptr @sru_max_width, ptr @sru_partition }, align 4
@.str = private unnamed_addr constant [4 x i8] c"sru\00", align 1
@sru_ops = internal constant %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sru_pad_ops }, align 4
@sru_intensity_control = internal constant %struct.v4l2_ctrl_config { ptr @sru_ctrl_ops, ptr null, i32 9967873, ptr @.str.2, i32 1, i64 1, i64 6, i64 1, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"sru: failed to initialize controls\0A\00", align 1
@vsp1_sru_params = internal unnamed_addr constant [6 x %struct.vsp1_sru_param] [%struct.vsp1_sru_param { i32 16778241, i32 1583359 }, %struct.vsp1_sru_param { i32 16778241, i32 528639 }, %struct.vsp1_sru_param { i32 25167105, i32 2374911 }, %struct.vsp1_sru_param { i32 25167105, i32 793599 }, %struct.vsp1_sru_param { i32 33490433, i32 3166463 }, %struct.vsp1_sru_param { i32 33490433, i32 1058047 }], align 4
@sru_pad_ops = internal constant %struct.v4l2_subdev_pad_ops { ptr @vsp1_entity_init_cfg, ptr @sru_enum_mbus_code, ptr @sru_enum_frame_size, ptr null, ptr @vsp1_subdev_get_pad_format, ptr @sru_set_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sru_enum_mbus_code.codes = internal constant [2 x i32] [i32 4109, i32 8215], align 4
@sru_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @sru_s_ctrl }, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"Intensity\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vsp1_sru_create(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 396, i32 noundef 3520) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.vsp1_entity, ptr %3, i32 0, i32 1
  store ptr @sru_entity_ops, ptr %6, align 4
  %7 = getelementptr inbounds %struct.vsp1_entity, ptr %3, i32 0, i32 2
  store i32 10, ptr %7, align 4
  %8 = tail call i32 @vsp1_entity_init(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull @.str, i32 noundef 2, ptr noundef nonnull @sru_ops, i32 noundef 16389) #6
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = inttoptr i32 %8 to ptr
  br label %25

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.vsp1_sru, ptr %3, i32 0, i32 1
  %14 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %13, i32 noundef 1, ptr noundef null, ptr noundef null) #6
  %15 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %13, ptr noundef nonnull @sru_intensity_control, ptr noundef null) #6
  %16 = getelementptr inbounds %struct.vsp1_sru, ptr %3, i32 0, i32 2
  store i32 1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.vsp1_entity, ptr %3, i32 0, i32 13, i32 8
  store ptr %13, ptr %17, align 4
  %18 = getelementptr inbounds %struct.vsp1_sru, ptr %3, i32 0, i32 1, i32 9
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %12
  %22 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.1) #7
  %23 = load i32, ptr %18, align 4
  tail call void @vsp1_entity_destroy(ptr noundef nonnull %3) #6
  %24 = inttoptr i32 %23 to ptr
  br label %25

25:                                               ; preds = %21, %12, %10, %1
  %26 = phi ptr [ %11, %10 ], [ %24, %21 ], [ %3, %12 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_entity_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_entity_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sru_configure_stream(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %0, ptr noundef %6, i32 noundef 0) #6
  %8 = load ptr, ptr %5, align 4
  %9 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %0, ptr noundef %8, i32 noundef 1) #6
  %10 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %7, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 4109
  %13 = select i1 %12, i32 14, i32 4
  %14 = load i32, ptr %7, align 4
  %15 = load i32, ptr %9, align 4
  %16 = icmp eq i32 %14, %15
  %17 = or i32 %13, 64
  %18 = select i1 %16, i32 %13, i32 %17
  %19 = getelementptr inbounds %struct.vsp1_sru, ptr %0, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, -1
  %22 = getelementptr [6 x %struct.vsp1_sru_param], ptr @vsp1_sru_params, i32 0, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = or i32 %18, %23
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef 8704, i32 noundef %24) #6
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef 8708, i32 noundef 2047) #6
  %25 = getelementptr [6 x %struct.vsp1_sru_param], ptr @vsp1_sru_params, i32 0, i32 %21, i32 1
  %26 = load i32, ptr %25, align 4
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef 8712, i32 noundef %26) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sru_max_width(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %0, ptr noundef %4, i32 noundef 0) #6
  %6 = load ptr, ptr %3, align 4
  %7 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %0, ptr noundef %6, i32 noundef 1) #6
  %8 = load i32, ptr %5, align 4
  %9 = load i32, ptr %7, align 4
  %10 = icmp eq i32 %8, %9
  %11 = select i1 %10, i32 256, i32 512
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sru_partition(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2, i32 noundef %3, ptr nocapture noundef %4) #0 {
  %6 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %0, ptr noundef %7, i32 noundef 0) #6
  %9 = load ptr, ptr %6, align 4
  %10 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %0, ptr noundef %9, i32 noundef 1) #6
  %11 = load i32, ptr %8, align 4
  %12 = load i32, ptr %10, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.vsp1_partition_window, ptr %4, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = lshr i32 %16, 1
  store i32 %17, ptr %15, align 4
  %18 = load i32, ptr %4, align 4
  %19 = lshr i32 %18, 1
  store i32 %19, ptr %4, align 4
  br label %20

20:                                               ; preds = %14, %5
  %21 = getelementptr inbounds %struct.vsp1_partition, ptr %2, i32 0, i32 3
  %22 = load i64, ptr %4, align 4
  store i64 %22, ptr %21, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_entity_get_pad_format(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_dl_body_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_entity_init_cfg(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sru_enum_mbus_code(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @vsp1_subdev_enum_mbus_code(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @sru_enum_mbus_code.codes, i32 noundef 2) #6
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sru_enum_frame_size(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -60
  %5 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = tail call ptr @vsp1_entity_get_pad_config(ptr noundef %4, ptr noundef %1, i32 noundef %6) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %52, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %4, ptr noundef nonnull %7, i32 noundef 0) #6
  %11 = getelementptr i8, ptr %0, i32 200
  tail call void @mutex_lock(ptr noundef %11) #6
  %12 = load i32, ptr %2, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %50

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %10, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %50

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 3
  store i32 4, ptr %25, align 4
  %26 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 4
  store i32 8190, ptr %26, align 4
  %27 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 5
  store i32 4, ptr %27, align 4
  br label %47

28:                                               ; preds = %20
  %29 = load i32, ptr %10, align 4
  %30 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 3
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %10, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 5
  store i32 %32, ptr %33, align 4
  %34 = load i32, ptr %10, align 4
  %35 = icmp ult i32 %34, 4096
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = load i32, ptr %31, align 4
  %38 = icmp ult i32 %37, 4096
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = shl nuw nsw i32 %34, 1
  %41 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 4
  store i32 %40, ptr %41, align 4
  %42 = load i32, ptr %31, align 4
  %43 = shl i32 %42, 1
  br label %47

44:                                               ; preds = %36, %28
  %45 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 4
  store i32 %34, ptr %45, align 4
  %46 = load i32, ptr %31, align 4
  br label %47

47:                                               ; preds = %44, %39, %24
  %48 = phi i32 [ 8190, %24 ], [ %46, %44 ], [ %43, %39 ]
  %49 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 6
  store i32 %48, ptr %49, align 4
  br label %50

50:                                               ; preds = %47, %14, %9
  %51 = phi i32 [ -22, %14 ], [ -22, %9 ], [ 0, %47 ]
  tail call void @mutex_unlock(ptr noundef %11) #6
  br label %52

52:                                               ; preds = %50, %3
  %53 = phi i32 [ %51, %50 ], [ -22, %3 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_get_pad_format(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sru_set_format(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -60
  %5 = getelementptr i8, ptr %0, i32 200
  tail call void @mutex_lock(ptr noundef %5) #6
  %6 = load i32, ptr %2, align 4
  %7 = tail call ptr @vsp1_entity_get_pad_config(ptr noundef %4, ptr noundef %1, i32 noundef %6) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %50, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2
  tail call fastcc void @sru_try_format(ptr noundef %4, ptr noundef nonnull %7, i32 noundef %11, ptr noundef %12)
  %13 = load i32, ptr %10, align 4
  %14 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %4, ptr noundef nonnull %7, i32 noundef %13) #6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %14, ptr noundef align 4 dereferenceable(48) %12, i32 48, i1 false)
  %15 = load i32, ptr %10, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %9
  %18 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %4, ptr noundef nonnull %7, i32 noundef 1) #6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %18, ptr noundef align 4 dereferenceable(48) %12, i32 48, i1 false)
  %19 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %4, ptr noundef nonnull %7, i32 noundef 0) #6
  %20 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %19, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %18, i32 0, i32 2
  store i32 %21, ptr %22, align 4
  %23 = load i32, ptr %19, align 4
  %24 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %19, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = load i32, ptr %18, align 4
  %27 = tail call i32 @llvm.umin.i32(i32 %26, i32 8190) #6
  %28 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %18, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 8190) #6
  %31 = mul nuw nsw i32 %30, %27
  %32 = icmp ult i32 %26, 4096
  %33 = icmp ult i32 %29, 4096
  %34 = select i1 %32, i1 %33, i1 false
  %35 = mul i32 %23, 9
  %36 = mul i32 %35, %25
  %37 = lshr i32 %36, 2
  %38 = icmp ugt i32 %31, %37
  %39 = select i1 %34, i1 %38, i1 false
  br i1 %39, label %40, label %44

40:                                               ; preds = %17
  %41 = shl i32 %23, 1
  store i32 %41, ptr %18, align 4
  %42 = load i32, ptr %24, align 4
  %43 = shl i32 %42, 1
  br label %46

44:                                               ; preds = %17
  store i32 %23, ptr %18, align 4
  %45 = load i32, ptr %24, align 4
  br label %46

46:                                               ; preds = %44, %40
  %47 = phi i32 [ %45, %44 ], [ %43, %40 ]
  store i32 %47, ptr %28, align 4
  %48 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %18, i32 0, i32 3
  store i32 1, ptr %48, align 4
  %49 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %18, i32 0, i32 4
  store i32 8, ptr %49, align 4
  br label %50

50:                                               ; preds = %46, %9, %3
  %51 = phi i32 [ 0, %46 ], [ 0, %9 ], [ -22, %3 ]
  tail call void @mutex_unlock(ptr noundef %5) #6
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_enum_mbus_code(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_entity_get_pad_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sru_try_format(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  switch i32 %2, label %45 [
    i32 0, label %5
    i32 1, label %17
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
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 8190)
  store i32 %16, ptr %13, align 4
  br label %45

17:                                               ; preds = %4
  %18 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %0, ptr noundef %1, i32 noundef 0) #6
  %19 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %3, i32 0, i32 2
  store i32 %20, ptr %21, align 4
  %22 = load i32, ptr %18, align 4
  %23 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %18, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = load i32, ptr %3, align 4
  %26 = tail call i32 @llvm.umin.i32(i32 %25, i32 8190)
  %27 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %3, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = tail call i32 @llvm.umin.i32(i32 %28, i32 8190)
  %30 = mul nuw nsw i32 %29, %26
  %31 = icmp ult i32 %25, 4096
  %32 = icmp ult i32 %28, 4096
  %33 = select i1 %31, i1 %32, i1 false
  %34 = mul i32 %22, 9
  %35 = mul i32 %34, %24
  %36 = lshr i32 %35, 2
  %37 = icmp ugt i32 %30, %36
  %38 = select i1 %33, i1 %37, i1 false
  br i1 %38, label %39, label %43

39:                                               ; preds = %17
  %40 = shl i32 %22, 1
  store i32 %40, ptr %3, align 4
  %41 = load i32, ptr %23, align 4
  %42 = shl i32 %41, 1
  store i32 %42, ptr %27, align 4
  br label %45

43:                                               ; preds = %17
  store i32 %22, ptr %3, align 4
  %44 = load i32, ptr %23, align 4
  store i32 %44, ptr %27, align 4
  br label %45

45:                                               ; preds = %43, %39, %9, %4
  %46 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %3, i32 0, i32 3
  store i32 1, ptr %46, align 4
  %47 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %3, i32 0, i32 4
  store i32 8, ptr %47, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @sru_s_ctrl(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 9967873
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %7, i32 112
  store i32 %9, ptr %10, align 4
  br label %11

11:                                               ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
