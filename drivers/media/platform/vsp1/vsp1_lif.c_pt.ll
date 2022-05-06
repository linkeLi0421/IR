; ModuleID = '/llk/IR/drivers/media/platform/vsp1/vsp1_lif.c_pt.bc'
source_filename = "../drivers/media/platform/vsp1/vsp1_lif.c"
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
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.71, i16, i16, i16, [10 x i16] }
%union.anon.71 = type { i16 }

@lif_entity_ops = internal constant %struct.vsp1_entity_operations { ptr null, ptr @lif_configure_stream, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [4 x i8] c"lif\00", align 1
@lif_ops = internal constant %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lif_pad_ops }, align 4
@lif_pad_ops = internal constant %struct.v4l2_subdev_pad_ops { ptr @vsp1_entity_init_cfg, ptr @lif_enum_mbus_code, ptr @lif_enum_frame_size, ptr null, ptr @vsp1_subdev_get_pad_format, ptr @lif_set_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@lif_codes = internal constant [2 x i32] [i32 4109, i32 8215], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vsp1_lif_create(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 280, i32 noundef 3520) #3
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.vsp1_entity, ptr %4, i32 0, i32 1
  store ptr @lif_entity_ops, ptr %7, align 4
  %8 = getelementptr inbounds %struct.vsp1_entity, ptr %4, i32 0, i32 2
  store i32 7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.vsp1_entity, ptr %4, i32 0, i32 3
  store i32 %1, ptr %9, align 4
  %10 = tail call i32 @vsp1_entity_init(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull @.str, i32 noundef 2, ptr noundef nonnull @lif_ops, i32 noundef 16386) #3
  %11 = icmp slt i32 %10, 0
  %12 = inttoptr i32 %10 to ptr
  %13 = select i1 %11, ptr %12, ptr %4
  br label %14

14:                                               ; preds = %6, %2
  %15 = phi ptr [ inttoptr (i32 -12 to ptr), %2 ], [ %13, %6 ]
  ret ptr %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_entity_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lif_configure_stream(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %0, ptr noundef %6, i32 noundef 1) #3
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.vsp1_device, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = trunc i32 %10 to i16
  %12 = and i16 %11, -256
  switch i16 %12, label %24 [
    i16 2816, label %13
    i16 4864, label %13
    i16 6400, label %25
    i16 6144, label %25
  ]

13:                                               ; preds = %4, %4
  %14 = load i32, ptr %7, align 4
  %15 = add i32 %14, 1
  %16 = lshr i32 %15, 1
  %17 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %7, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = mul i32 %16, %18
  %20 = add i32 %19, -4
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 128)
  %22 = shl nuw nsw i32 %21, 16
  %23 = or i32 %22, 3
  br label %25

24:                                               ; preds = %4
  br label %25

25:                                               ; preds = %24, %13, %4, %4
  %26 = phi i32 [ 196608003, %24 ], [ %23, %13 ], [ 98304003, %4 ], [ 98304003, %4 ]
  %27 = phi i32 [ 0, %24 ], [ 1520, %13 ], [ 0, %4 ], [ 0, %4 ]
  %28 = phi i32 [ 0, %24 ], [ 100663296, %13 ], [ 0, %4 ], [ 0, %4 ]
  %29 = or i32 %28, %27
  %30 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = mul i32 %31, -256
  %33 = add i32 %32, 15108
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %33, i32 noundef %29) #3
  %34 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %7, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 16, i32 0
  %38 = or i32 %26, %37
  %39 = load i32, ptr %30, align 4
  %40 = mul i32 %39, -256
  %41 = add i32 %40, 15104
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %41, i32 noundef %38) #3
  %42 = load ptr, ptr %0, align 4
  %43 = getelementptr inbounds %struct.vsp1_device, ptr %42, i32 0, i32 2
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 6145
  br i1 %46, label %47, label %51

47:                                               ; preds = %25
  %48 = load i32, ptr %30, align 4
  %49 = mul i32 %48, -256
  %50 = add i32 %49, 15116
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %50, i32 noundef -2046820352) #3
  br label %51

51:                                               ; preds = %47, %25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_entity_get_pad_format(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_dl_body_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_entity_init_cfg(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lif_enum_mbus_code(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @vsp1_subdev_enum_mbus_code(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @lif_codes, i32 noundef 2) #3
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lif_enum_frame_size(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @vsp1_subdev_enum_frame_size(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 2, i32 noundef 2, i32 noundef 8190, i32 noundef 8190) #3
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_get_pad_format(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lif_set_format(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @vsp1_subdev_set_pad_format(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @lif_codes, i32 noundef 2, i32 noundef 2, i32 noundef 2, i32 noundef 8190, i32 noundef 8190) #3
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_enum_mbus_code(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_enum_frame_size(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_set_pad_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

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
