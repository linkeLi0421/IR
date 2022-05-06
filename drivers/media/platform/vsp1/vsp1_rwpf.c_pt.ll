; ModuleID = '/llk/IR/drivers/media/platform/vsp1/vsp1_rwpf.c_pt.bc'
source_filename = "../drivers/media/platform/vsp1/vsp1_rwpf.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.77, i16, i16, i16, [10 x i16] }
%union.anon.77 = type { i16 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.vsp1_rwpf = type { %struct.vsp1_entity, %struct.v4l2_ctrl_handler, ptr, i32, i32, %struct.v4l2_pix_format_mplane, ptr, i32, i32, i32, i32, %struct.anon.82, %struct.vsp1_rwpf_memory, i8, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.81, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.81 = type { i8 }
%struct.anon.82 = type { %struct.spinlock, %struct.anon.83, i32, i32, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.83 = type { ptr, ptr, ptr }
%struct.vsp1_rwpf_memory = type { [3 x i32] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.70, %union.anon.71, i32, ptr, i32, %struct.anon.72, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.70 = type { i64 }
%union.anon.71 = type { ptr }
%struct.anon.72 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@vsp1_rwpf_pad_ops = dso_local local_unnamed_addr constant %struct.v4l2_subdev_pad_ops { ptr @vsp1_entity_init_cfg, ptr @vsp1_rwpf_enum_mbus_code, ptr @vsp1_rwpf_enum_frame_size, ptr null, ptr @vsp1_subdev_get_pad_format, ptr @vsp1_rwpf_set_format, ptr @vsp1_rwpf_get_selection, ptr @vsp1_rwpf_set_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@vsp1_rwpf_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @vsp1_rwpf_s_ctrl }, align 4
@.str = private unnamed_addr constant [28 x i8] c"include/media/v4l2-subdev.h\00", align 1
@vsp1_rwpf_enum_mbus_code.codes = internal unnamed_addr constant [3 x i32] [i32 4109, i32 24577, i32 8215], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vsp1_rwpf_get_crop(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 13, i32 0, i32 5
  %4 = load i16, ptr %3, align 4
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1016, i32 noundef 9, ptr noundef null) #6
  br label %7

7:                                                ; preds = %6, %2
  %8 = load ptr, ptr %1, align 4
  %9 = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %8, i32 0, i32 1
  ret ptr %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_entity_init_cfg(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @vsp1_rwpf_enum_mbus_code(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #2 {
  %4 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %2, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 2
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr [3 x i32], ptr @vsp1_rwpf_enum_mbus_code.codes, i32 0, i32 %5
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %2, i32 0, i32 2
  store i32 %9, ptr %10, align 4
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ 0, %7 ], [ -22, %3 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vsp1_rwpf_enum_frame_size(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 336
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 340
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @vsp1_subdev_enum_frame_size(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 1, i32 noundef 1, i32 noundef %5, i32 noundef %7) #6
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_get_pad_format(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vsp1_rwpf_set_format(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -60
  %5 = getelementptr i8, ptr %0, i32 200
  tail call void @mutex_lock(ptr noundef %5) #6
  %6 = load i32, ptr %2, align 4
  %7 = tail call ptr @vsp1_entity_get_pad_config(ptr noundef %4, ptr noundef %1, i32 noundef %6) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %63, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2
  %11 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 2
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %13 [
    i32 4109, label %14
    i32 24577, label %14
    i32 8215, label %14
  ]

13:                                               ; preds = %9
  store i32 8215, ptr %11, align 4
  br label %14

14:                                               ; preds = %13, %9, %9, %9
  %15 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %4, ptr noundef nonnull %7, i32 noundef %16) #6
  %18 = load i32, ptr %15, align 4
  %19 = icmp eq i32 %18, 1
  %20 = load i32, ptr %11, align 4
  %21 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %17, i32 0, i32 2
  store i32 %20, ptr %21, align 4
  br i1 %19, label %22, label %23

22:                                               ; preds = %14
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %10, ptr noundef align 4 dereferenceable(48) %17, i32 48, i1 false)
  br label %63

23:                                               ; preds = %14
  %24 = load i32, ptr %10, align 4
  %25 = tail call i32 @llvm.umax.i32(i32 %24, i32 1)
  %26 = getelementptr i8, ptr %0, i32 336
  %27 = load i32, ptr %26, align 4
  %28 = tail call i32 @llvm.umin.i32(i32 %25, i32 %27)
  store i32 %28, ptr %17, align 4
  %29 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = tail call i32 @llvm.umax.i32(i32 %30, i32 1)
  %32 = getelementptr i8, ptr %0, i32 340
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @llvm.umin.i32(i32 %31, i32 %33)
  %35 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %17, i32 0, i32 1
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %17, i32 0, i32 3
  store i32 1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %17, i32 0, i32 4
  store i32 8, ptr %37, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %10, ptr noundef align 4 dereferenceable(48) %17, i32 48, i1 false)
  %38 = getelementptr i8, ptr %0, i32 -52
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 9
  br i1 %40, label %41, label %54

41:                                               ; preds = %23
  %42 = getelementptr i8, ptr %0, i32 32
  %43 = load i16, ptr %42, align 4
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %46, !prof !8

45:                                               ; preds = %41
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1016, i32 noundef 9, ptr noundef null) #6
  br label %46

46:                                               ; preds = %45, %41
  %47 = load ptr, ptr %7, align 4
  %48 = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %47, i32 0, i32 1
  store i32 0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %47, i32 0, i32 1, i32 1
  store i32 0, ptr %49, align 4
  %50 = load i32, ptr %10, align 4
  %51 = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %47, i32 0, i32 1, i32 2
  store i32 %50, ptr %51, align 4
  %52 = load i32, ptr %29, align 4
  %53 = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %47, i32 0, i32 1, i32 3
  store i32 %52, ptr %53, align 4
  br label %54

54:                                               ; preds = %46, %23
  %55 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %4, ptr noundef nonnull %7, i32 noundef 1) #6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %55, ptr noundef align 4 dereferenceable(48) %10, i32 48, i1 false)
  %56 = getelementptr i8, ptr %0, i32 580
  %57 = load i8, ptr %56, align 4, !range !9
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = load i32, ptr %29, align 4
  store i32 %60, ptr %55, align 4
  %61 = load i32, ptr %10, align 4
  %62 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %55, i32 0, i32 1
  store i32 %61, ptr %62, align 4
  br label %63

63:                                               ; preds = %59, %54, %22, %3
  %64 = phi i32 [ 0, %22 ], [ 0, %59 ], [ 0, %54 ], [ -22, %3 ]
  tail call void @mutex_unlock(ptr noundef %5) #6
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vsp1_rwpf_get_selection(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -60
  %5 = getelementptr i8, ptr %0, i32 -52
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 13
  br i1 %7, label %40, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %0, i32 200
  tail call void @mutex_lock(ptr noundef %13) #6
  %14 = load i32, ptr %2, align 4
  %15 = tail call ptr @vsp1_entity_get_pad_config(ptr noundef %4, ptr noundef %1, i32 noundef %14) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %38, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  switch i32 %19, label %38 [
    i32 0, label %20
    i32 2, label %29
  ]

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4
  %22 = getelementptr i8, ptr %0, i32 32
  %23 = load i16, ptr %22, align 4
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %26, !prof !8

25:                                               ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1016, i32 noundef 9, ptr noundef null) #6
  br label %26

26:                                               ; preds = %25, %20
  %27 = load ptr, ptr %15, align 4
  %28 = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %27, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %21, ptr noundef align 4 dereferenceable(16) %28, i32 16, i1 false)
  br label %38

29:                                               ; preds = %17
  %30 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %4, ptr noundef nonnull %15, i32 noundef 0) #6
  %31 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4
  store i32 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 1
  store i32 0, ptr %32, align 4
  %33 = load i32, ptr %30, align 4
  %34 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 2
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %30, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 3
  store i32 %36, ptr %37, align 4
  br label %38

38:                                               ; preds = %29, %26, %17, %12
  %39 = phi i32 [ 0, %29 ], [ 0, %26 ], [ -22, %12 ], [ -22, %17 ]
  tail call void @mutex_unlock(ptr noundef %13) #6
  br label %40

40:                                               ; preds = %38, %8, %3
  %41 = phi i32 [ %39, %38 ], [ -22, %8 ], [ -22, %3 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vsp1_rwpf_set_selection(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -60
  %5 = getelementptr i8, ptr %0, i32 -52
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 13
  br i1 %7, label %85, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %85

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %85

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %0, i32 200
  tail call void @mutex_lock(ptr noundef %17) #6
  %18 = load i32, ptr %2, align 4
  %19 = tail call ptr @vsp1_entity_get_pad_config(ptr noundef %4, ptr noundef %1, i32 noundef %18) #6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %83, label %21

21:                                               ; preds = %16
  %22 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %4, ptr noundef nonnull %19, i32 noundef 0) #6
  %23 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 8215
  %26 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  br i1 %25, label %35, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 3
  %34 = load i32, ptr %33, align 4
  br label %48

35:                                               ; preds = %21
  %36 = add i32 %27, 1
  %37 = and i32 %36, -2
  store i32 %37, ptr %26, align 4
  %38 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, 1
  %41 = and i32 %40, -2
  store i32 %41, ptr %38, align 4
  %42 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, -2
  store i32 %44, ptr %42, align 4
  %45 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, -2
  store i32 %47, ptr %45, align 4
  br label %48

48:                                               ; preds = %35, %28
  %49 = phi i32 [ %34, %28 ], [ %47, %35 ]
  %50 = phi i32 [ %32, %28 ], [ %44, %35 ]
  %51 = phi i32 [ %30, %28 ], [ %41, %35 ]
  %52 = phi i32 [ %27, %28 ], [ %37, %35 ]
  %53 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4
  %54 = load i32, ptr %22, align 4
  %55 = add i32 %54, -2
  %56 = tail call i32 @llvm.umin.i32(i32 %52, i32 %55)
  store i32 %56, ptr %53, align 4
  %57 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 1
  %58 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %22, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, -2
  %61 = tail call i32 @llvm.umin.i32(i32 %51, i32 %60)
  store i32 %61, ptr %57, align 4
  %62 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 2
  %63 = load i32, ptr %22, align 4
  %64 = sub i32 %63, %56
  %65 = tail call i32 @llvm.umin.i32(i32 %50, i32 %64)
  store i32 %65, ptr %62, align 4
  %66 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 3
  %67 = load i32, ptr %58, align 4
  %68 = sub i32 %67, %61
  %69 = tail call i32 @llvm.umin.i32(i32 %49, i32 %68)
  store i32 %69, ptr %66, align 4
  %70 = getelementptr i8, ptr %0, i32 32
  %71 = load i16, ptr %70, align 4
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %73, label %74, !prof !8

73:                                               ; preds = %48
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1016, i32 noundef 9, ptr noundef null) #6
  br label %74

74:                                               ; preds = %73, %48
  %75 = load ptr, ptr %19, align 4
  %76 = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %75, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %76, ptr noundef align 4 dereferenceable(16) %53, i32 16, i1 false)
  %77 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %4, ptr noundef nonnull %19, i32 noundef 1) #6
  %78 = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %75, i32 0, i32 1, i32 2
  %79 = load i32, ptr %78, align 4
  store i32 %79, ptr %77, align 4
  %80 = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %75, i32 0, i32 1, i32 3
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %77, i32 0, i32 1
  store i32 %81, ptr %82, align 4
  br label %83

83:                                               ; preds = %74, %16
  %84 = phi i32 [ 0, %74 ], [ -22, %16 ]
  tail call void @mutex_unlock(ptr noundef %17) #6
  br label %85

85:                                               ; preds = %83, %12, %8, %3
  %86 = phi i32 [ %84, %83 ], [ -22, %8 ], [ -22, %3 ], [ -22, %12 ]
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vsp1_rwpf_init_ctrls(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 1
  %4 = add i32 %1, 1
  %5 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %3, i32 noundef %4, ptr noundef null, ptr noundef null) #6
  %6 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %3, ptr noundef nonnull @vsp1_rwpf_ctrl_ops, i32 noundef 9963817, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 255) #6
  %7 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 13, i32 8
  store ptr %3, ptr %7, align 4
  %8 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 1, i32 9
  %9 = load i32, ptr %8, align 4
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_enum_frame_size(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_entity_get_pad_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_entity_get_pad_format(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @vsp1_rwpf_s_ctrl(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 9963817
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %7, i32 324
  store i32 %9, ptr %10, align 4
  br label %11

11:                                               ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

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
!9 = !{i8 0, i8 2}
