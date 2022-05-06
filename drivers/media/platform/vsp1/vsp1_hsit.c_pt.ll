; ModuleID = '/llk/IR/drivers/media/platform/vsp1/vsp1_hsit.c_pt.bc'
source_filename = "../drivers/media/platform/vsp1/vsp1_hsit.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vsp1_entity_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vsp1_hsit = type { %struct.vsp1_entity, i8 }
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
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.71, i16, i16, i16, [10 x i16] }
%union.anon.71 = type { i16 }

@hsit_entity_ops = internal constant %struct.vsp1_entity_operations { ptr null, ptr @hsit_configure_stream, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [4 x i8] c"hsi\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"hst\00", align 1
@hsit_ops = internal constant %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hsit_pad_ops }, align 4
@hsit_pad_ops = internal constant %struct.v4l2_subdev_pad_ops { ptr @vsp1_entity_init_cfg, ptr @hsit_enum_mbus_code, ptr @hsit_enum_frame_size, ptr null, ptr @vsp1_subdev_get_pad_format, ptr @hsit_set_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vsp1_hsit_create(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 284, i32 noundef 3520) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = zext i1 %1 to i8
  %8 = getelementptr inbounds %struct.vsp1_hsit, ptr %4, i32 0, i32 1
  store i8 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.vsp1_entity, ptr %4, i32 0, i32 1
  store ptr @hsit_entity_ops, ptr %9, align 4
  %10 = select i1 %1, i32 5, i32 6
  %11 = select i1 %1, ptr @.str, ptr @.str.1
  %12 = getelementptr inbounds %struct.vsp1_entity, ptr %4, i32 0, i32 2
  store i32 %10, ptr %12, align 4
  %13 = tail call i32 @vsp1_entity_init(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %11, i32 noundef 2, ptr noundef nonnull @hsit_ops, i32 noundef 16387) #5
  %14 = icmp slt i32 %13, 0
  %15 = inttoptr i32 %13 to ptr
  %16 = select i1 %14, ptr %15, ptr %4
  br label %17

17:                                               ; preds = %6, %2
  %18 = phi ptr [ inttoptr (i32 -12 to ptr), %2 ], [ %16, %6 ]
  ret ptr %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_entity_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hsit_configure_stream(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.vsp1_hsit, ptr %0, i32 0, i32 1
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %7, i32 10752, i32 11008
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %8, i32 noundef 1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_dl_body_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_entity_init_cfg(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @hsit_enum_mbus_code(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #2 {
  %4 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %2, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = load i32, ptr %2, align 4
  switch i32 %8, label %18 [
    i32 0, label %9
    i32 1, label %14
  ]

9:                                                ; preds = %7
  %10 = getelementptr i8, ptr %0, i32 220
  %11 = load i8, ptr %10, align 4, !range !8
  %12 = xor i8 %11, 1
  %13 = zext i8 %12 to i32
  br label %18

14:                                               ; preds = %7
  %15 = getelementptr i8, ptr %0, i32 220
  %16 = load i8, ptr %15, align 4, !range !8
  %17 = zext i8 %16 to i32
  br label %18

18:                                               ; preds = %14, %9, %7
  %19 = phi i32 [ 0, %14 ], [ %13, %9 ], [ 0, %7 ]
  %20 = phi i32 [ %17, %14 ], [ 0, %9 ], [ 0, %7 ]
  %21 = or i32 %20, %19
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %2, i32 0, i32 2
  %24 = select i1 %22, i32 24577, i32 4109
  store i32 %24, ptr %23, align 4
  br label %25

25:                                               ; preds = %18, %3
  %26 = phi i32 [ -22, %3 ], [ 0, %18 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hsit_enum_frame_size(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @vsp1_subdev_enum_frame_size(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 4, i32 noundef 4, i32 noundef 8190, i32 noundef 8190) #5
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_get_pad_format(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hsit_set_format(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -60
  %5 = getelementptr i8, ptr %0, i32 200
  tail call void @mutex_lock(ptr noundef %5) #5
  %6 = load i32, ptr %2, align 4
  %7 = tail call ptr @vsp1_entity_get_pad_config(ptr noundef %4, ptr noundef %1, i32 noundef %6) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %39, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %4, ptr noundef nonnull %7, i32 noundef %11) #5
  %13 = load i32, ptr %10, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %16, ptr noundef align 4 dereferenceable(48) %12, i32 48, i1 false)
  br label %39

17:                                               ; preds = %9
  %18 = getelementptr i8, ptr %0, i32 220
  %19 = load i8, ptr %18, align 4, !range !8
  %20 = icmp eq i8 %19, 0
  %21 = select i1 %20, i32 4109, i32 24577
  %22 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %12, i32 0, i32 2
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 @llvm.umax.i32(i32 %24, i32 4)
  %26 = tail call i32 @llvm.umin.i32(i32 %25, i32 8190)
  store i32 %26, ptr %12, align 4
  %27 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = tail call i32 @llvm.umax.i32(i32 %28, i32 4)
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 8190)
  %31 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %12, i32 0, i32 1
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %12, i32 0, i32 3
  store i32 1, ptr %32, align 4
  %33 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %12, i32 0, i32 4
  store i32 8, ptr %33, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %23, ptr noundef align 4 dereferenceable(48) %12, i32 48, i1 false)
  %34 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %4, ptr noundef nonnull %7, i32 noundef 1) #5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %34, ptr noundef align 4 dereferenceable(48) %23, i32 48, i1 false)
  %35 = load i8, ptr %18, align 4, !range !8
  %36 = icmp eq i8 %35, 0
  %37 = select i1 %36, i32 24577, i32 4109
  %38 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %34, i32 0, i32 2
  store i32 %37, ptr %38, align 4
  br label %39

39:                                               ; preds = %17, %15, %3
  %40 = phi i32 [ 0, %15 ], [ 0, %17 ], [ -22, %3 ]
  tail call void @mutex_unlock(ptr noundef %5) #5
  ret i32 %40
}

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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

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
!8 = !{i8 0, i8 2}
