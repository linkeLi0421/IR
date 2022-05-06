; ModuleID = '/llk/IR/drivers/media/platform/vsp1/vsp1_uif.c_pt.bc'
source_filename = "../drivers/media/platform/vsp1/vsp1_uif.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.vsp1_device = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, [5 x ptr], ptr, [3 x ptr], [2 x ptr], [4 x ptr], %struct.list_head, %struct.list_head, %struct.v4l2_device, %struct.media_device, %struct.media_entity_operations, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.65], %struct.media_entity_enum, i32 }
%struct.anon.65 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.vsp1_uif = type { %struct.vsp1_entity, i8 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.71, i16, i16, i16, [10 x i16] }
%union.anon.71 = type { i16 }

@vsp1_r8a7796 = internal constant [2 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], align 4
@uif_entity_ops = internal constant %struct.vsp1_entity_operations { ptr null, ptr @uif_configure_stream, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [7 x i8] c"uif.%u\00", align 1
@uif_ops = internal constant %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uif_pad_ops }, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"r8a7796\00", align 1
@uif_pad_ops = internal constant %struct.v4l2_subdev_pad_ops { ptr @vsp1_entity_init_cfg, ptr @uif_enum_mbus_code, ptr @uif_enum_frame_size, ptr null, ptr @vsp1_subdev_get_pad_format, ptr @uif_set_format, ptr @uif_get_selection, ptr @uif_set_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@uif_codes = internal constant [3 x i32] [i32 4109, i32 24577, i32 8215], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vsp1_uif_get_crc(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = shl i32 %4, 8
  %6 = add i32 %5, 7196
  %7 = getelementptr inbounds %struct.vsp1_device, ptr %2, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 %6
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vsp1_uif_create(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false), !annotation !10
  %4 = load ptr, ptr %0, align 8
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 284, i32 noundef 3520) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @soc_device_match(ptr noundef nonnull @vsp1_r8a7796) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.vsp1_uif, ptr %5, i32 0, i32 1
  store i8 1, ptr %11, align 4
  br label %12

12:                                               ; preds = %10, %7
  %13 = getelementptr inbounds %struct.vsp1_entity, ptr %5, i32 0, i32 1
  store ptr @uif_entity_ops, ptr %13, align 4
  %14 = getelementptr inbounds %struct.vsp1_entity, ptr %5, i32 0, i32 2
  store i32 12, ptr %14, align 4
  %15 = getelementptr inbounds %struct.vsp1_entity, ptr %5, i32 0, i32 3
  store i32 %1, ptr %15, align 4
  %16 = add i32 %1, 4
  %17 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str, i32 noundef %16)
  %18 = call i32 @vsp1_entity_init(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %3, i32 noundef 2, ptr noundef nonnull @uif_ops, i32 noundef 16390) #7
  %19 = icmp slt i32 %18, 0
  %20 = inttoptr i32 %18 to ptr
  %21 = select i1 %19, ptr %20, ptr %5
  br label %22

22:                                               ; preds = %12, %2
  %23 = phi ptr [ inttoptr (i32 -12 to ptr), %2 ], [ %21, %12 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #7
  ret ptr %23
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_entity_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uif_configure_stream(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = shl i32 %6, 8
  %8 = add i32 %7, 7188
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %8, i32 noundef 9) #7
  %9 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 14
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr @vsp1_entity_get_pad_selection(ptr noundef %0, ptr noundef %10, i32 noundef 0, i32 noundef 0) #7
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.v4l2_rect, ptr %11, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.vsp1_uif, ptr %0, i32 0, i32 1
  %16 = load i8, ptr %15, align 4, !range !11
  %17 = zext i8 %16 to i32
  %18 = lshr i32 %12, %17
  %19 = lshr i32 %14, %17
  %20 = load i32, ptr %5, align 4
  %21 = shl i32 %20, 8
  %22 = add i32 %21, 7200
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %22, i32 noundef %18) #7
  %23 = getelementptr inbounds %struct.v4l2_rect, ptr %11, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = load i32, ptr %5, align 4
  %26 = shl i32 %25, 8
  %27 = add i32 %26, 7204
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %27, i32 noundef %24) #7
  %28 = load i32, ptr %5, align 4
  %29 = shl i32 %28, 8
  %30 = add i32 %29, 7208
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %30, i32 noundef %19) #7
  %31 = getelementptr inbounds %struct.v4l2_rect, ptr %11, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = load i32, ptr %5, align 4
  %34 = shl i32 %33, 8
  %35 = add i32 %34, 7212
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %35, i32 noundef %32) #7
  %36 = load i32, ptr %5, align 4
  %37 = shl i32 %36, 8
  %38 = add i32 %37, 7168
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %38, i32 noundef 1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_entity_get_pad_selection(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_dl_body_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_entity_init_cfg(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uif_enum_mbus_code(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @vsp1_subdev_enum_mbus_code(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @uif_codes, i32 noundef 3) #7
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uif_enum_frame_size(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @vsp1_subdev_enum_frame_size(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 4, i32 noundef 4, i32 noundef 8190, i32 noundef 8190) #7
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_get_pad_format(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uif_set_format(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @vsp1_subdev_set_pad_format(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @uif_codes, i32 noundef 3, i32 noundef 4, i32 noundef 4, i32 noundef 8190, i32 noundef 8190) #7
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uif_get_selection(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -60
  %5 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 200
  tail call void @mutex_lock(ptr noundef %9) #7
  %10 = load i32, ptr %2, align 4
  %11 = tail call ptr @vsp1_entity_get_pad_config(ptr noundef %4, ptr noundef %1, i32 noundef %10) #7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %29 [
    i32 2, label %16
    i32 1, label %16
    i32 0, label %25
  ]

16:                                               ; preds = %13, %13
  %17 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %4, ptr noundef nonnull %11, i32 noundef 0) #7
  %18 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 1
  store i32 0, ptr %19, align 4
  %20 = load i32, ptr %17, align 4
  %21 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 2
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %17, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 3
  store i32 %23, ptr %24, align 4
  br label %29

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4
  %27 = load i32, ptr %5, align 4
  %28 = tail call ptr @vsp1_entity_get_pad_selection(ptr noundef %4, ptr noundef nonnull %11, i32 noundef %27, i32 noundef 0) #7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %26, ptr noundef align 4 dereferenceable(16) %28, i32 16, i1 false)
  br label %29

29:                                               ; preds = %25, %16, %13, %8
  %30 = phi i32 [ 0, %25 ], [ 0, %16 ], [ -22, %8 ], [ -22, %13 ]
  tail call void @mutex_unlock(ptr noundef %9) #7
  br label %31

31:                                               ; preds = %29, %3
  %32 = phi i32 [ %30, %29 ], [ -22, %3 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uif_set_selection(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -60
  %5 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %46

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %46

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %0, i32 200
  tail call void @mutex_lock(ptr noundef %13) #7
  %14 = load i32, ptr %2, align 4
  %15 = tail call ptr @vsp1_entity_get_pad_config(ptr noundef %4, ptr noundef %1, i32 noundef %14) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %44, label %17

17:                                               ; preds = %12
  %18 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %4, ptr noundef nonnull %15, i32 noundef 0) #7
  %19 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %18, align 4
  %22 = add i32 %21, -1
  %23 = tail call i32 @llvm.umin.i32(i32 %20, i32 %22)
  store i32 %23, ptr %19, align 4
  %24 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %18, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, -1
  %29 = tail call i32 @llvm.umin.i32(i32 %25, i32 %28)
  store i32 %29, ptr %24, align 4
  %30 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = tail call i32 @llvm.umax.i32(i32 %31, i32 4)
  %33 = load i32, ptr %18, align 4
  %34 = sub i32 %33, %23
  %35 = tail call i32 @llvm.umin.i32(i32 %32, i32 %34)
  store i32 %35, ptr %30, align 4
  %36 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = tail call i32 @llvm.umax.i32(i32 %37, i32 4)
  %39 = load i32, ptr %26, align 4
  %40 = sub i32 %39, %29
  %41 = tail call i32 @llvm.umin.i32(i32 %38, i32 %40)
  store i32 %41, ptr %36, align 4
  %42 = load i32, ptr %5, align 4
  %43 = tail call ptr @vsp1_entity_get_pad_selection(ptr noundef %4, ptr noundef nonnull %15, i32 noundef %42, i32 noundef 0) #7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %43, ptr noundef align 4 dereferenceable(16) %19, i32 16, i1 false)
  br label %44

44:                                               ; preds = %17, %12
  %45 = phi i32 [ 0, %17 ], [ -22, %12 ]
  tail call void @mutex_unlock(ptr noundef %13) #7
  br label %46

46:                                               ; preds = %44, %8, %3
  %47 = phi i32 [ %45, %44 ], [ -22, %8 ], [ -22, %3 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_enum_mbus_code(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_enum_frame_size(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_set_pad_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_entity_get_pad_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_entity_get_pad_format(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 5749300}
!9 = !{i64 2153281263}
!10 = !{!"auto-init"}
!11 = !{i8 0, i8 2}
