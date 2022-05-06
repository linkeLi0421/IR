; ModuleID = '/llk/IR/drivers/media/platform/vsp1/vsp1_brx.c_pt.bc'
source_filename = "../drivers/media/platform/vsp1/vsp1_brx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vsp1_entity_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vsp1_brx = type { %struct.vsp1_entity, i32, %struct.v4l2_ctrl_handler, [5 x %struct.anon.81], i32 }
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
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.81 = type { ptr }
%struct.vsp1_device = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, [5 x ptr], ptr, [3 x ptr], [2 x ptr], [4 x ptr], %struct.list_head, %struct.list_head, %struct.v4l2_device, %struct.media_device, %struct.media_entity_operations, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.65], %struct.media_entity_enum, i32 }
%struct.anon.65 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.vsp1_device_info = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.vsp1_pipeline = type { %struct.media_pipeline, %struct.spinlock, i32, %struct.wait_queue_head, ptr, %struct.mutex, %struct.kref, i32, i32, i32, i32, [5 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i8, i8, i32, ptr, ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vsp1_rwpf = type { %struct.vsp1_entity, %struct.v4l2_ctrl_handler, ptr, i32, i32, %struct.v4l2_pix_format_mplane, ptr, i32, i32, i32, i32, %struct.anon.83, %struct.vsp1_rwpf_memory, i8, ptr }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.82, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.82 = type { i8 }
%struct.anon.83 = type { %struct.spinlock, %struct.anon.84, i32, i32, i8 }
%struct.anon.84 = type { ptr, ptr, ptr }
%struct.vsp1_rwpf_memory = type { [3 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.77, i16, i16, i16, [10 x i16] }
%union.anon.77 = type { i16 }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.70, %union.anon.71, i32, ptr, i32, %struct.anon.72, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.70 = type { i64 }
%union.anon.71 = type { ptr }
%struct.anon.72 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@brx_entity_ops = internal constant %struct.vsp1_entity_operations { ptr null, ptr @brx_configure_stream, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [4 x i8] c"bru\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"brs\00", align 1
@brx_ops = internal constant %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brx_pad_ops }, align 4
@brx_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @brx_s_ctrl }, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"%s: failed to initialize controls\0A\00", align 1
@brx_pad_ops = internal constant %struct.v4l2_subdev_pad_ops { ptr @vsp1_entity_init_cfg, ptr @brx_enum_mbus_code, ptr @brx_enum_frame_size, ptr null, ptr @vsp1_subdev_get_pad_format, ptr @brx_set_format, ptr @brx_get_selection, ptr @brx_set_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@brx_enum_mbus_code.codes = internal constant [2 x i32] [i32 4109, i32 8215], align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"include/media/v4l2-subdev.h\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vsp1_brx_create(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 420, i32 noundef 3520) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %38, label %6

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 1
  %8 = select i1 %7, i32 11264, i32 14592
  %9 = getelementptr inbounds %struct.vsp1_brx, ptr %4, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.vsp1_entity, ptr %4, i32 0, i32 1
  store ptr @brx_entity_ops, ptr %10, align 4
  %11 = getelementptr inbounds %struct.vsp1_entity, ptr %4, i32 0, i32 2
  store i32 %1, ptr %11, align 4
  br i1 %7, label %12, label %18

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.vsp1_device, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.vsp1_device_info, ptr %14, i32 0, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 1
  br label %18

18:                                               ; preds = %12, %6
  %19 = phi i32 [ %17, %12 ], [ 3, %6 ]
  %20 = phi ptr [ @.str, %12 ], [ @.str.1, %6 ]
  %21 = tail call i32 @vsp1_entity_init(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %20, i32 noundef %19, ptr noundef nonnull @brx_ops, i32 noundef 16385) #7
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = inttoptr i32 %21 to ptr
  br label %38

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.vsp1_brx, ptr %4, i32 0, i32 2
  %27 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %26, i32 noundef 1, ptr noundef null, ptr noundef null) #7
  %28 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %26, ptr noundef nonnull @brx_ctrl_ops, i32 noundef 9963811, i64 noundef 0, i64 noundef 16777215, i64 noundef 1, i64 noundef 0) #7
  %29 = getelementptr inbounds %struct.vsp1_brx, ptr %4, i32 0, i32 4
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.vsp1_entity, ptr %4, i32 0, i32 13, i32 8
  store ptr %26, ptr %30, align 4
  %31 = getelementptr inbounds %struct.vsp1_brx, ptr %4, i32 0, i32 2, i32 9
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %25
  %35 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.2, ptr noundef nonnull %20) #8
  %36 = load i32, ptr %31, align 4
  tail call void @vsp1_entity_destroy(ptr noundef nonnull %4) #7
  %37 = inttoptr i32 %36 to ptr
  br label %38

38:                                               ; preds = %34, %25, %23, %2
  %39 = phi ptr [ %24, %23 ], [ %37, %34 ], [ %4, %25 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_entity_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_entity_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brx_configure_stream(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 9
  %8 = load i32, ptr %7, align 4
  %9 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %0, ptr noundef %6, i32 noundef %8) #7
  %10 = getelementptr inbounds %struct.vsp1_pipeline, ptr %1, i32 0, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.vsp1_rwpf, ptr %11, i32 0, i32 5, i32 7
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, 1
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 28
  %19 = xor i32 %18, 268435456
  br label %20

20:                                               ; preds = %13, %4
  %21 = phi i32 [ %19, %13 ], [ 268435456, %4 ]
  %22 = getelementptr inbounds %struct.vsp1_brx, ptr %0, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %23, i32 noundef %21) #7
  %24 = load i32, ptr %9, align 4
  %25 = shl i32 %24, 16
  %26 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %9, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = or i32 %25, %27
  %29 = load i32, ptr %22, align 4
  %30 = add i32 %29, 4
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %30, i32 noundef %28) #7
  %31 = load i32, ptr %22, align 4
  %32 = add i32 %31, 8
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %32, i32 noundef 0) #7
  %33 = getelementptr inbounds %struct.vsp1_brx, ptr %0, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = or i32 %34, -16777216
  %36 = load i32, ptr %22, align 4
  %37 = add i32 %36, 12
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %37, i32 noundef %35) #7
  %38 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %44

41:                                               ; preds = %20
  %42 = load i32, ptr %22, align 4
  %43 = add i32 %42, 48
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %43, i32 noundef 1048576) #7
  br label %44

44:                                               ; preds = %41, %20
  %45 = load i32, ptr %7, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %88, label %47

47:                                               ; preds = %57, %44
  %48 = phi i32 [ %85, %57 ], [ 0, %44 ]
  %49 = getelementptr %struct.vsp1_brx, ptr %0, i32 0, i32 3, i32 %48
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.vsp1_rwpf, ptr %50, i32 0, i32 5, i32 7
  %54 = load i8, ptr %53, align 1
  %55 = and i8 %54, 1
  %56 = icmp ne i8 %55, 0
  br label %57

57:                                               ; preds = %52, %47
  %58 = phi i1 [ %56, %52 ], [ false, %47 ]
  %59 = phi i32 [ -2147483648, %52 ], [ 0, %47 ]
  %60 = icmp eq i32 %48, 0
  %61 = or i32 %59, 4194304
  %62 = select i1 %60, i32 %61, i32 %59
  %63 = load i32, ptr %38, align 4
  %64 = icmp eq i32 %63, 1
  %65 = icmp eq i32 %48, 1
  %66 = select i1 %64, i1 %65, i1 false
  %67 = icmp ugt i32 %48, 3
  %68 = zext i1 %67 to i32
  %69 = add nuw i32 %48, %68
  %70 = shl i32 %69, 16
  %71 = select i1 %66, i32 0, i32 %70
  %72 = or i32 %71, %62
  %73 = shl i32 %48, 3
  %74 = add i32 %73, 16
  %75 = icmp ult i32 %48, 4
  %76 = select i1 %75, i32 0, i32 4
  %77 = or i32 %74, %76
  %78 = load i32, ptr %22, align 4
  %79 = add i32 %77, %78
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %79, i32 noundef %72) #7
  %80 = add i32 %73, 20
  %81 = add i32 %80, %76
  %82 = select i1 %58, i32 875823359, i32 842268927
  %83 = load i32, ptr %22, align 4
  %84 = add i32 %81, %83
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %84, i32 noundef %82) #7
  %85 = add nuw i32 %48, 1
  %86 = load i32, ptr %7, align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %47, label %88

88:                                               ; preds = %57, %44
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_entity_get_pad_format(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_dl_body_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_entity_init_cfg(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brx_enum_mbus_code(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @vsp1_subdev_enum_mbus_code(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @brx_enum_mbus_code.codes, i32 noundef 2) #7
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @brx_enum_frame_size(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #3 {
  %4 = load i32, ptr %2, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %14 [
    i32 4109, label %9
    i32 8215, label %9
  ]

9:                                                ; preds = %6, %6
  %10 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 3
  store i32 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 4
  store i32 8190, ptr %11, align 4
  %12 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 5
  store i32 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 6
  store i32 8190, ptr %13, align 4
  br label %14

14:                                               ; preds = %9, %6, %3
  %15 = phi i32 [ 0, %9 ], [ -22, %3 ], [ -22, %6 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_get_pad_format(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brx_set_format(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -60
  %5 = getelementptr i8, ptr %0, i32 200
  tail call void @mutex_lock(ptr noundef %5) #7
  %6 = load i32, ptr %2, align 4
  %7 = tail call ptr @vsp1_entity_get_pad_config(ptr noundef %4, ptr noundef %1, i32 noundef %6) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %70, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 2
  %16 = load i32, ptr %15, align 4
  switch i32 %16, label %17 [
    i32 4109, label %24
    i32 8215, label %24
  ]

17:                                               ; preds = %14
  store i32 8215, ptr %15, align 4
  br label %24

18:                                               ; preds = %9
  %19 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %4, ptr noundef nonnull %7, i32 noundef 0) #7
  %20 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %19, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 2
  store i32 %21, ptr %22, align 4
  %23 = load i32, ptr %10, align 4
  br label %24

24:                                               ; preds = %18, %17, %14, %14
  %25 = phi i32 [ 0, %14 ], [ 0, %14 ], [ 0, %17 ], [ %23, %18 ]
  %26 = load i32, ptr %12, align 4
  %27 = tail call i32 @llvm.umax.i32(i32 %26, i32 1) #7
  %28 = tail call i32 @llvm.umin.i32(i32 %27, i32 8190) #7
  store i32 %28, ptr %12, align 4
  %29 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = tail call i32 @llvm.umax.i32(i32 %30, i32 1) #7
  %32 = tail call i32 @llvm.umin.i32(i32 %31, i32 8190) #7
  store i32 %32, ptr %29, align 4
  %33 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 3
  store i32 1, ptr %33, align 4
  %34 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 4
  store i32 8, ptr %34, align 4
  %35 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %4, ptr noundef nonnull %7, i32 noundef %25) #7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %35, ptr noundef align 4 dereferenceable(48) %12, i32 48, i1 false)
  %36 = load i32, ptr %10, align 4
  %37 = getelementptr i8, ptr %0, i32 -16
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %57, label %40

40:                                               ; preds = %24
  %41 = getelementptr i8, ptr %0, i32 32
  %42 = load i16, ptr %41, align 4
  %43 = zext i16 %42 to i32
  %44 = icmp ult i32 %36, %43
  br i1 %44, label %46, label %45, !prof !8

45:                                               ; preds = %40
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1034, i32 noundef 9, ptr noundef null) #7
  br label %46

46:                                               ; preds = %45, %40
  %47 = phi i32 [ 0, %45 ], [ %36, %40 ]
  %48 = load ptr, ptr %7, align 4
  %49 = getelementptr %struct.v4l2_subdev_pad_config, ptr %48, i32 %47, i32 2
  store i32 0, ptr %49, align 4
  %50 = getelementptr %struct.v4l2_subdev_pad_config, ptr %48, i32 %47, i32 2, i32 1
  store i32 0, ptr %50, align 4
  %51 = load i32, ptr %35, align 4
  %52 = getelementptr %struct.v4l2_subdev_pad_config, ptr %48, i32 %47, i32 2, i32 2
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %35, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr %struct.v4l2_subdev_pad_config, ptr %48, i32 %47, i32 2, i32 3
  store i32 %54, ptr %55, align 4
  %56 = load i32, ptr %10, align 4
  br label %57

57:                                               ; preds = %46, %24
  %58 = phi i32 [ %56, %46 ], [ %36, %24 ]
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 2
  br label %62

62:                                               ; preds = %62, %60
  %63 = phi i32 [ 0, %60 ], [ %67, %62 ]
  %64 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %4, ptr noundef nonnull %7, i32 noundef %63) #7
  %65 = load i32, ptr %61, align 4
  %66 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %64, i32 0, i32 2
  store i32 %65, ptr %66, align 4
  %67 = add i32 %63, 1
  %68 = load i32, ptr %37, align 4
  %69 = icmp ugt i32 %67, %68
  br i1 %69, label %70, label %62

70:                                               ; preds = %62, %57, %3
  %71 = phi i32 [ 0, %57 ], [ -22, %3 ], [ 0, %62 ]
  tail call void @mutex_unlock(ptr noundef %5) #7
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brx_get_selection(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -60
  %5 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 -16
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %35, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %35 [
    i32 258, label %13
    i32 256, label %18
  ]

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 1
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 2
  store i32 8190, ptr %16, align 4
  %17 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 3
  store i32 8190, ptr %17, align 4
  br label %35

18:                                               ; preds = %10
  %19 = load i32, ptr %2, align 4
  %20 = tail call ptr @vsp1_entity_get_pad_config(ptr noundef %4, ptr noundef %1, i32 noundef %19) #7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %35, label %22

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %0, i32 200
  tail call void @mutex_lock(ptr noundef %23) #7
  %24 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4
  %25 = load i32, ptr %5, align 4
  %26 = getelementptr i8, ptr %0, i32 32
  %27 = load i16, ptr %26, align 4
  %28 = zext i16 %27 to i32
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %31, label %30, !prof !8

30:                                               ; preds = %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1034, i32 noundef 9, ptr noundef null) #7
  br label %31

31:                                               ; preds = %30, %22
  %32 = phi i32 [ 0, %30 ], [ %25, %22 ]
  %33 = load ptr, ptr %20, align 4
  %34 = getelementptr %struct.v4l2_subdev_pad_config, ptr %33, i32 %32, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %24, ptr noundef align 4 dereferenceable(16) %34, i32 16, i1 false)
  tail call void @mutex_unlock(ptr noundef %23) #7
  br label %35

35:                                               ; preds = %31, %18, %13, %10, %3
  %36 = phi i32 [ 0, %31 ], [ 0, %13 ], [ -22, %3 ], [ -22, %18 ], [ -22, %10 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brx_set_selection(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -60
  %5 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 -16
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %52, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 256
  br i1 %13, label %14, label %52

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %0, i32 200
  tail call void @mutex_lock(ptr noundef %15) #7
  %16 = load i32, ptr %2, align 4
  %17 = tail call ptr @vsp1_entity_get_pad_config(ptr noundef %4, ptr noundef %1, i32 noundef %16) #7
  %18 = icmp eq ptr %17, null
  br i1 %18, label %50, label %19

19:                                               ; preds = %14
  %20 = load i32, ptr %7, align 4
  %21 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %4, ptr noundef nonnull %17, i32 noundef %20) #7
  %22 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = load i32, ptr %21, align 4
  %25 = add i32 %24, -1
  %26 = tail call i32 @llvm.umin.i32(i32 %23, i32 %25)
  store i32 %26, ptr %22, align 4
  %27 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %21, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, -1
  %32 = tail call i32 @llvm.umin.i32(i32 %28, i32 %31)
  store i32 %32, ptr %27, align 4
  %33 = load i32, ptr %5, align 4
  %34 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %4, ptr noundef nonnull %17, i32 noundef %33) #7
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 2
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %34, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 3
  store i32 %38, ptr %39, align 4
  %40 = load i32, ptr %5, align 4
  %41 = getelementptr i8, ptr %0, i32 32
  %42 = load i16, ptr %41, align 4
  %43 = zext i16 %42 to i32
  %44 = icmp ult i32 %40, %43
  br i1 %44, label %46, label %45, !prof !8

45:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1034, i32 noundef 9, ptr noundef null) #7
  br label %46

46:                                               ; preds = %45, %19
  %47 = phi i32 [ 0, %45 ], [ %40, %19 ]
  %48 = load ptr, ptr %17, align 4
  %49 = getelementptr %struct.v4l2_subdev_pad_config, ptr %48, i32 %47, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %49, ptr noundef align 4 dereferenceable(16) %22, i32 16, i1 false)
  br label %50

50:                                               ; preds = %46, %14
  %51 = phi i32 [ 0, %46 ], [ -22, %14 ]
  tail call void @mutex_unlock(ptr noundef %15) #7
  br label %52

52:                                               ; preds = %50, %10, %3
  %53 = phi i32 [ %51, %50 ], [ -22, %3 ], [ -22, %10 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_enum_mbus_code(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_entity_get_pad_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @brx_s_ctrl(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 9963811
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %7, i32 132
  store i32 %9, ptr %10, align 4
  br label %11

11:                                               ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
