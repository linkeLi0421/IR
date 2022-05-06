; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/dispnv50/lut.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/lut.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.drm_property_blob = type { %struct.drm_mode_object, ptr, %struct.list_head, %struct.list_head, i32, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_color_lut = type { i16, i16, i16, i16 }

@.str = private unnamed_addr constant [39 x i8] c"drivers/gpu/drm/nouveau/dispnv50/lut.c\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"kmsLut\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_lut_load(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %4
  %7 = getelementptr [2 x %struct.nvif_mem], ptr %0, i32 0, i32 %1, i32 0, i32 6
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr [2 x %struct.nvif_mem], ptr %0, i32 0, i32 %1, i32 3
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i32
  br label %21

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.drm_property_blob, ptr %2, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr [2 x %struct.nvif_mem], ptr %0, i32 0, i32 %1, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr [2 x %struct.nvif_mem], ptr %0, i32 0, i32 %1, i32 3
  %18 = load i64, ptr %17, align 8
  %19 = icmp eq ptr %14, null
  %20 = trunc i64 %18 to i32
  br i1 %19, label %21, label %37

21:                                               ; preds = %12, %6
  %22 = phi i32 [ %11, %6 ], [ %20, %12 ]
  %23 = phi ptr [ %8, %6 ], [ %16, %12 ]
  %24 = tail call noalias ptr @kvmalloc_node(i32 noundef 8192, i32 noundef 3264, i32 noundef -1) #3
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27, !prof !8

26:                                               ; preds = %21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 42, i32 noundef 9, ptr noundef null) #4
  br label %41

27:                                               ; preds = %27, %21
  %28 = phi i32 [ %34, %27 ], [ 0, %21 ]
  %29 = trunc i32 %28 to i16
  %30 = shl i16 %29, 6
  %31 = getelementptr %struct.drm_color_lut, ptr %24, i32 %28
  %32 = getelementptr %struct.drm_color_lut, ptr %24, i32 %28, i32 2
  store i16 %30, ptr %32, align 2
  %33 = getelementptr %struct.drm_color_lut, ptr %24, i32 %28, i32 1
  store i16 %30, ptr %33, align 2
  store i16 %30, ptr %31, align 2
  %34 = add nuw nsw i32 %28, 1
  %35 = icmp eq i32 %34, 1024
  br i1 %35, label %36, label %27

36:                                               ; preds = %27
  tail call void %3(ptr noundef nonnull %24, i32 noundef 1024, ptr noundef %23) #4
  tail call void @kvfree(ptr noundef nonnull %24) #4
  br label %41

37:                                               ; preds = %12
  %38 = getelementptr inbounds %struct.drm_property_blob, ptr %2, i32 0, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = lshr i32 %39, 3
  tail call void %3(ptr noundef nonnull %14, i32 noundef %40, ptr noundef %16) #4
  br label %41

41:                                               ; preds = %37, %36, %26
  %42 = phi i32 [ %22, %26 ], [ %22, %36 ], [ %20, %37 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_lut_fini(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @nvif_mem_dtor(ptr noundef %0) #4
  %2 = getelementptr [2 x %struct.nvif_mem], ptr %0, i32 0, i32 1
  tail call void @nvif_mem_dtor(ptr noundef %2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_mem_dtor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_lut_init(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.nvif_object, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 8
  %7 = icmp slt i32 %6, 36976
  %8 = select i1 %7, i32 2056, i32 8200
  %9 = zext i32 %8 to i64
  %10 = tail call i32 @nvif_mem_ctor_map(ptr noundef %1, ptr noundef nonnull @.str.1, i8 noundef zeroext 1, i64 noundef %9, ptr noundef %2) #4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = getelementptr [2 x %struct.nvif_mem], ptr %2, i32 0, i32 1
  %14 = tail call i32 @nvif_mem_ctor_map(ptr noundef %1, ptr noundef nonnull @.str.1, i8 noundef zeroext 1, i64 noundef %9, ptr noundef %13) #4
  br label %15

15:                                               ; preds = %12, %3
  %16 = phi i32 [ %10, %3 ], [ %14, %12 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_mem_ctor_map(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind allocsize(0) }
attributes #4 = { nounwind }

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
