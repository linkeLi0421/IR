; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvif/vmm.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvif/vmm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvif_vmm_unmap_v0 = type { i8, [7 x i8], i64 }
%struct.nvif_vmm_map_v0 = type { i8, [7 x i8], i64, i64, i64, i64, [0 x i8] }
%struct.nvif_vmm_put_v0 = type { i8, [7 x i8], i64 }
%struct.nvif_vma = type { i64, i64 }
%struct.nvif_vmm_get_v0 = type { i8, i8, i8, i8, i8, [3 x i8], i64, i64 }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.nvif_vmm_page_v0 = type { i8, i8, i8, i8, i8, i8, i8, [1 x i8] }
%struct.nvif_vmm_v0 = type { i8, i8, i8, [5 x i8], i64, i64, [0 x i8] }
%struct.anon.0 = type { i8, i8 }

@.str = private unnamed_addr constant [35 x i8] c"drivers/gpu/drm/nouveau/nvif/vmm.c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"nvifVmm\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvif_vmm_unmap(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.nvif_vmm_unmap_v0, align 8
  %4 = getelementptr inbounds %struct.nvif_vmm_unmap_v0, ptr %3, i32 0, i32 2
  store i64 0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = call i32 @nvif_object_mthd(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %3, i32 noundef 16) #6
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_mthd(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvif_vmm_map(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 {
  %8 = alloca [48 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(48) %8, i8 0, i32 48, i1 false), !annotation !8
  %9 = add i32 %4, 40
  %10 = icmp ugt i32 %9, 48
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %9, i32 noundef 3264) #7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %11, %7
  %15 = phi ptr [ %12, %11 ], [ %8, %7 ]
  store i8 0, ptr %15, align 8
  %16 = getelementptr inbounds %struct.nvif_vmm_map_v0, ptr %15, i32 0, i32 2
  store i64 %1, ptr %16, align 8
  %17 = getelementptr inbounds %struct.nvif_vmm_map_v0, ptr %15, i32 0, i32 3
  store i64 %2, ptr %17, align 8
  %18 = ptrtoint ptr %5 to i32
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.nvif_vmm_map_v0, ptr %15, i32 0, i32 4
  store i64 %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.nvif_vmm_map_v0, ptr %15, i32 0, i32 5
  store i64 %6, ptr %21, align 8
  %22 = getelementptr inbounds %struct.nvif_vmm_map_v0, ptr %15, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %22, ptr align 1 %3, i32 %4, i1 false)
  %23 = call i32 @nvif_object_mthd(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %15, i32 noundef %9) #6
  %24 = icmp eq ptr %15, %8
  br i1 %24, label %26, label %25

25:                                               ; preds = %14
  call void @kfree(ptr noundef nonnull %15) #6
  br label %26

26:                                               ; preds = %25, %14, %11
  %27 = phi i32 [ -12, %11 ], [ %23, %25 ], [ %23, %14 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #6
  ret i32 %27
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvif_vmm_put(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.nvif_vmm_put_v0, align 8
  %4 = getelementptr inbounds %struct.nvif_vma, ptr %1, i32 0, i32 1
  %5 = load i64, ptr %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.nvif_vmm_put_v0, ptr %3, i32 0, i32 2
  store i64 0, ptr %3, align 8
  %9 = load i64, ptr %1, align 8
  store i64 %9, ptr %8, align 8
  %10 = call i32 @nvif_object_mthd(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %3, i32 noundef 16) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12, !prof !9

12:                                               ; preds = %7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 9, ptr noundef null) #6
  br label %13

13:                                               ; preds = %12, %7
  store i64 0, ptr %4, align 8
  br label %14

14:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvif_vmm_get(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i64 noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = alloca %struct.nvif_vmm_get_v0, align 8
  %9 = zext i1 %2 to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i32 24, i1 false), !annotation !8
  %10 = getelementptr inbounds %struct.nvif_vma, ptr %6, i32 0, i32 1
  store i64 0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.nvif_vmm_get_v0, ptr %8, i32 0, i32 2
  store i8 %9, ptr %11, align 2
  %12 = getelementptr inbounds %struct.nvif_vmm_get_v0, ptr %8, i32 0, i32 3
  store i8 %3, ptr %12, align 1
  %13 = getelementptr inbounds %struct.nvif_vmm_get_v0, ptr %8, i32 0, i32 4
  store i8 %4, ptr %13, align 4
  %14 = getelementptr inbounds %struct.nvif_vmm_get_v0, ptr %8, i32 0, i32 6
  store i64 %5, ptr %14, align 8
  switch i32 %1, label %16 [
    i32 0, label %20
    i32 1, label %17
    i32 2, label %15
  ]

15:                                               ; preds = %7
  br label %17

16:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 9, ptr noundef null) #6
  br label %27

17:                                               ; preds = %15, %7
  %18 = phi i8 [ 2, %15 ], [ 1, %7 ]
  %19 = getelementptr inbounds %struct.nvif_vmm_get_v0, ptr %8, i32 0, i32 1
  store i8 %18, ptr %19, align 1
  br label %20

20:                                               ; preds = %17, %7
  %21 = call i32 @nvif_object_mthd(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %8, i32 noundef 24) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.nvif_vmm_get_v0, ptr %8, i32 0, i32 7
  %25 = load i64, ptr %24, align 8
  store i64 %25, ptr %6, align 8
  %26 = load i64, ptr %14, align 8
  store i64 %26, ptr %10, align 8
  br label %27

27:                                               ; preds = %23, %20, %16
  %28 = phi i32 [ -22, %16 ], [ 0, %23 ], [ %21, %20 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #6
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvif_vmm_dtor(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvif_vmm, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  tail call void @kfree(ptr noundef %3) #6
  tail call void @nvif_object_dtor(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_dtor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvif_vmm_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i64 noundef %4, i64 noundef %5, ptr nocapture noundef readonly %6, i32 noundef %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = alloca %struct.nvif_vmm_page_v0, align 8
  %11 = add i32 %7, 24
  %12 = getelementptr inbounds %struct.nvif_object, ptr %8, i32 0, i32 1
  store ptr null, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nvif_vmm, ptr %8, i32 0, i32 3
  store ptr null, ptr %13, align 8
  %14 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %11, i32 noundef 3264) #7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %98, label %16

16:                                               ; preds = %9
  %17 = zext i1 %3 to i8
  store i8 0, ptr %14, align 64
  %18 = getelementptr inbounds %struct.nvif_vmm_v0, ptr %14, i32 0, i32 2
  store i8 %17, ptr %18, align 2
  %19 = getelementptr inbounds %struct.nvif_vmm_v0, ptr %14, i32 0, i32 4
  store i64 %4, ptr %19, align 8
  %20 = getelementptr inbounds %struct.nvif_vmm_v0, ptr %14, i32 0, i32 5
  store i64 %5, ptr %20, align 16
  %21 = getelementptr inbounds %struct.nvif_vmm_v0, ptr %14, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %21, ptr align 1 %6, i32 %7, i1 false)
  %22 = icmp eq ptr %1, null
  %23 = select i1 %22, ptr @.str.1, ptr %1
  %24 = tail call i32 @nvif_object_ctor(ptr noundef %0, ptr noundef %23, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %14, i32 noundef %11, ptr noundef %8) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %93

26:                                               ; preds = %16
  %27 = load i64, ptr %19, align 8
  %28 = getelementptr inbounds %struct.nvif_vmm, ptr %8, i32 0, i32 1
  store i64 %27, ptr %28, align 8
  %29 = load i64, ptr %20, align 16
  %30 = getelementptr inbounds %struct.nvif_vmm, ptr %8, i32 0, i32 2
  store i64 %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.nvif_vmm_v0, ptr %14, i32 0, i32 1
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = getelementptr inbounds %struct.nvif_vmm, ptr %8, i32 0, i32 4
  store i32 %33, ptr %34, align 4
  %35 = shl nuw nsw i32 %33, 1
  %36 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %35, i32 noundef 3264) #7
  store ptr %36, ptr %13, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %93, label %38

38:                                               ; preds = %26
  %39 = load i32, ptr %34, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %96

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.nvif_vmm_page_v0, ptr %10, i32 0, i32 1
  %43 = getelementptr inbounds %struct.nvif_vmm_page_v0, ptr %10, i32 0, i32 2
  %44 = getelementptr inbounds %struct.nvif_vmm_page_v0, ptr %10, i32 0, i32 3
  %45 = getelementptr inbounds %struct.nvif_vmm_page_v0, ptr %10, i32 0, i32 4
  %46 = getelementptr inbounds %struct.nvif_vmm_page_v0, ptr %10, i32 0, i32 5
  %47 = getelementptr inbounds %struct.nvif_vmm_page_v0, ptr %10, i32 0, i32 6
  br label %48

48:                                               ; preds = %54, %41
  %49 = phi i32 [ 0, %41 ], [ %90, %54 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #6
  store i64 0, ptr %10, align 8, !annotation !8
  %50 = trunc i32 %49 to i8
  store i8 %50, ptr %42, align 1
  call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(6) %43, i8 0, i64 6, i1 false)
  %51 = call i32 @nvif_object_mthd(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %10, i32 noundef 8) #6
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #6
  br label %93

54:                                               ; preds = %48
  %55 = load i8, ptr %43, align 2
  %56 = load ptr, ptr %13, align 8
  %57 = getelementptr %struct.anon.0, ptr %56, i32 %49
  store i8 %55, ptr %57, align 1
  %58 = load i8, ptr %44, align 1
  %59 = icmp ne i8 %58, 0
  %60 = load ptr, ptr %13, align 8
  %61 = getelementptr %struct.anon.0, ptr %60, i32 %49, i32 1
  %62 = zext i1 %59 to i8
  %63 = load i8, ptr %61, align 1
  %64 = and i8 %63, -2
  %65 = or i8 %64, %62
  store i8 %65, ptr %61, align 1
  %66 = load i8, ptr %45, align 4
  %67 = icmp eq i8 %66, 0
  %68 = load ptr, ptr %13, align 8
  %69 = getelementptr %struct.anon.0, ptr %68, i32 %49, i32 1
  %70 = load i8, ptr %69, align 1
  %71 = select i1 %67, i8 0, i8 2
  %72 = and i8 %70, -3
  %73 = or i8 %72, %71
  store i8 %73, ptr %69, align 1
  %74 = load i8, ptr %46, align 1
  %75 = icmp eq i8 %74, 0
  %76 = load ptr, ptr %13, align 8
  %77 = getelementptr %struct.anon.0, ptr %76, i32 %49, i32 1
  %78 = load i8, ptr %77, align 1
  %79 = select i1 %75, i8 0, i8 4
  %80 = and i8 %78, -5
  %81 = or i8 %80, %79
  store i8 %81, ptr %77, align 1
  %82 = load i8, ptr %47, align 2
  %83 = icmp eq i8 %82, 0
  %84 = load ptr, ptr %13, align 8
  %85 = getelementptr %struct.anon.0, ptr %84, i32 %49, i32 1
  %86 = load i8, ptr %85, align 1
  %87 = select i1 %83, i8 0, i8 8
  %88 = and i8 %86, -9
  %89 = or i8 %88, %87
  store i8 %89, ptr %85, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #6
  %90 = add nuw nsw i32 %49, 1
  %91 = load i32, ptr %34, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %48, label %96

93:                                               ; preds = %53, %26, %16
  %94 = phi i32 [ -12, %26 ], [ %51, %53 ], [ %24, %16 ]
  %95 = load ptr, ptr %13, align 8
  call void @kfree(ptr noundef %95) #6
  call void @nvif_object_dtor(ptr noundef %8) #6
  br label %96

96:                                               ; preds = %93, %54, %38
  %97 = phi i32 [ %94, %93 ], [ 0, %38 ], [ 0, %54 ]
  call void @kfree(ptr noundef nonnull %14) #6
  br label %98

98:                                               ; preds = %96, %9
  %99 = phi i32 [ %97, %96 ], [ -12, %9 ]
  ret i32 %99
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
