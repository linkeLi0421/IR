; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvif/mem.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvif/mem.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_mem_v0 = type { i8, i8, i8, [5 x i8], i64, i64, [0 x i8] }
%struct.anon.1 = type { i8, i8 }

@.str = private unnamed_addr constant [8 x i8] c"nvifMem\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvif_mem_ctor_map(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [128 x i8], align 1
  %7 = getelementptr inbounds %struct.nvif_mmu, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  %9 = or i8 %2, 32
  %10 = getelementptr inbounds %struct.nvif_object, ptr %4, i32 0, i32 1
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.nvif_mmu, ptr %0, i32 0, i32 3
  %12 = getelementptr inbounds %struct.nvif_mmu, ptr %0, i32 0, i32 8
  %13 = icmp eq ptr %1, null
  %14 = select i1 %13, ptr @.str, ptr %1
  %15 = getelementptr inbounds %struct.nvif_mem, ptr %4, i32 0, i32 1
  %16 = getelementptr inbounds %struct.nvif_mem, ptr %4, i32 0, i32 2
  %17 = getelementptr inbounds %struct.nvif_mem, ptr %4, i32 0, i32 3
  %18 = getelementptr inbounds %struct.nvif_mem, ptr %4, i32 0, i32 4
  %19 = getelementptr inbounds %struct.nvif_mem_v0, ptr %6, i32 0, i32 1
  %20 = getelementptr inbounds %struct.nvif_mem_v0, ptr %6, i32 0, i32 2
  %21 = getelementptr inbounds %struct.nvif_mem_v0, ptr %6, i32 0, i32 4
  %22 = getelementptr inbounds %struct.nvif_mem_v0, ptr %6, i32 0, i32 5
  %23 = getelementptr inbounds i8, ptr %6, i32 3
  br label %24

24:                                               ; preds = %48, %5
  %25 = phi i32 [ 0, %5 ], [ %50, %48 ]
  %26 = phi i32 [ -22, %5 ], [ %49, %48 ]
  %27 = load i8, ptr %11, align 2
  %28 = zext i8 %27 to i32
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %24
  %31 = load ptr, ptr %12, align 8
  %32 = getelementptr %struct.anon.1, ptr %31, i32 %25
  %33 = load i8, ptr %32, align 1
  %34 = and i8 %33, %9
  %35 = icmp eq i8 %34, %9
  br i1 %35, label %36, label %48

36:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %23, i8 0, i32 125, i1 false) #6, !annotation !8
  store ptr null, ptr %10, align 4
  store i8 0, ptr %6, align 8
  %37 = trunc i32 %25 to i8
  store i8 %37, ptr %19, align 1
  store i8 0, ptr %20, align 2
  store i64 %3, ptr %21, align 8
  %38 = call i32 @nvif_object_ctor(ptr noundef %0, ptr noundef %14, i32 noundef 0, i32 noundef %8, ptr noundef nonnull %6, i32 noundef 24, ptr noundef %4) #6
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load ptr, ptr %12, align 8
  %42 = getelementptr %struct.anon.1, ptr %41, i32 %25
  %43 = load i8, ptr %42, align 1
  store i8 %43, ptr %15, align 8
  %44 = load i8, ptr %20, align 2
  store i8 %44, ptr %16, align 1
  %45 = load i64, ptr %22, align 8
  store i64 %45, ptr %17, align 8
  %46 = load i64, ptr %21, align 8
  store i64 %46, ptr %18, align 8
  br label %47

47:                                               ; preds = %40, %36
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #6
  br label %48

48:                                               ; preds = %47, %30
  %49 = phi i32 [ %38, %47 ], [ %26, %30 ]
  %50 = add nuw nsw i32 %25, 1
  %51 = icmp eq i32 %49, 0
  br i1 %51, label %52, label %24

52:                                               ; preds = %48
  %53 = call i32 @nvif_object_map(ptr noundef %4, ptr noundef null, i32 noundef 0) #6
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  call void @nvif_object_dtor(ptr noundef %4) #6
  br label %56

56:                                               ; preds = %55, %52, %24
  %57 = phi i32 [ %53, %55 ], [ 0, %52 ], [ %26, %24 ]
  ret i32 %57
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvif_mem_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i64 noundef %5, ptr nocapture noundef readonly %6, i32 noundef %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = alloca [128 x i8], align 1
  %11 = getelementptr inbounds %struct.nvif_object, ptr %8, i32 0, i32 1
  store ptr null, ptr %11, align 4
  %12 = getelementptr inbounds %struct.nvif_mmu, ptr %0, i32 0, i32 3
  %13 = getelementptr inbounds %struct.nvif_mmu, ptr %0, i32 0, i32 8
  %14 = add i32 %7, 24
  %15 = icmp ugt i32 %14, 128
  %16 = icmp eq ptr %1, null
  %17 = select i1 %16, ptr @.str, ptr %1
  %18 = getelementptr inbounds %struct.nvif_mem, ptr %8, i32 0, i32 1
  %19 = getelementptr inbounds %struct.nvif_mem, ptr %8, i32 0, i32 2
  %20 = getelementptr inbounds %struct.nvif_mem, ptr %8, i32 0, i32 3
  %21 = getelementptr inbounds %struct.nvif_mem, ptr %8, i32 0, i32 4
  br label %22

22:                                               ; preds = %60, %9
  %23 = phi i32 [ 0, %9 ], [ %62, %60 ]
  %24 = phi i32 [ -22, %9 ], [ %61, %60 ]
  %25 = load i8, ptr %12, align 2
  %26 = zext i8 %25 to i32
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %64

28:                                               ; preds = %22
  %29 = load ptr, ptr %13, align 8
  %30 = getelementptr %struct.anon.1, ptr %29, i32 %23
  %31 = load i8, ptr %30, align 1
  %32 = and i8 %31, %3
  %33 = icmp eq i8 %32, %3
  br i1 %33, label %34, label %60

34:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %10) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %10, i8 0, i32 128, i1 false) #6, !annotation !8
  store ptr null, ptr %11, align 4
  br i1 %15, label %35, label %38

35:                                               ; preds = %34
  %36 = call noalias align 64 ptr @__kmalloc(i32 noundef %14, i32 noundef 3264) #7
  %37 = icmp eq ptr %36, null
  br i1 %37, label %58, label %38

38:                                               ; preds = %35, %34
  %39 = phi ptr [ %36, %35 ], [ %10, %34 ]
  store i8 0, ptr %39, align 8
  %40 = trunc i32 %23 to i8
  %41 = getelementptr inbounds %struct.nvif_mem_v0, ptr %39, i32 0, i32 1
  store i8 %40, ptr %41, align 1
  %42 = getelementptr inbounds %struct.nvif_mem_v0, ptr %39, i32 0, i32 2
  store i8 %4, ptr %42, align 2
  %43 = getelementptr inbounds %struct.nvif_mem_v0, ptr %39, i32 0, i32 4
  store i64 %5, ptr %43, align 8
  %44 = getelementptr inbounds %struct.nvif_mem_v0, ptr %39, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %44, ptr align 1 %6, i32 %7, i1 false) #6
  %45 = call i32 @nvif_object_ctor(ptr noundef %0, ptr noundef %17, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %39, i32 noundef %14, ptr noundef %8) #6
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %38
  %48 = load ptr, ptr %13, align 8
  %49 = getelementptr %struct.anon.1, ptr %48, i32 %23
  %50 = load i8, ptr %49, align 1
  store i8 %50, ptr %18, align 8
  %51 = load i8, ptr %42, align 2
  store i8 %51, ptr %19, align 1
  %52 = getelementptr inbounds %struct.nvif_mem_v0, ptr %39, i32 0, i32 5
  %53 = load i64, ptr %52, align 8
  store i64 %53, ptr %20, align 8
  %54 = load i64, ptr %43, align 8
  store i64 %54, ptr %21, align 8
  br label %55

55:                                               ; preds = %47, %38
  %56 = icmp eq ptr %39, %10
  br i1 %56, label %58, label %57

57:                                               ; preds = %55
  call void @kfree(ptr noundef nonnull %39) #6
  br label %58

58:                                               ; preds = %57, %55, %35
  %59 = phi i32 [ -12, %35 ], [ %45, %57 ], [ %45, %55 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %10) #6
  br label %60

60:                                               ; preds = %58, %28
  %61 = phi i32 [ %59, %58 ], [ %24, %28 ]
  %62 = add nuw nsw i32 %23, 1
  %63 = icmp eq i32 %61, 0
  br i1 %63, label %64, label %22

64:                                               ; preds = %60, %22
  %65 = phi i32 [ 0, %60 ], [ %24, %22 ]
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_map(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvif_mem_dtor(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @nvif_object_dtor(ptr noundef %0) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_dtor(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvif_mem_ctor_type(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, i64 noundef %5, ptr nocapture noundef readonly %6, i32 noundef %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %10) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %10, i8 0, i32 128, i1 false), !annotation !8
  %11 = getelementptr inbounds %struct.nvif_object, ptr %8, i32 0, i32 1
  store ptr null, ptr %11, align 4
  %12 = icmp slt i32 %3, 0
  br i1 %12, label %46, label %13

13:                                               ; preds = %9
  %14 = add i32 %7, 24
  %15 = icmp ugt i32 %14, 128
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %14, i32 noundef 3264) #7
  %18 = icmp eq ptr %17, null
  br i1 %18, label %46, label %19

19:                                               ; preds = %16, %13
  %20 = phi ptr [ %17, %16 ], [ %10, %13 ]
  store i8 0, ptr %20, align 8
  %21 = trunc i32 %3 to i8
  %22 = getelementptr inbounds %struct.nvif_mem_v0, ptr %20, i32 0, i32 1
  store i8 %21, ptr %22, align 1
  %23 = getelementptr inbounds %struct.nvif_mem_v0, ptr %20, i32 0, i32 2
  store i8 %4, ptr %23, align 2
  %24 = getelementptr inbounds %struct.nvif_mem_v0, ptr %20, i32 0, i32 4
  store i64 %5, ptr %24, align 8
  %25 = getelementptr inbounds %struct.nvif_mem_v0, ptr %20, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %25, ptr align 1 %6, i32 %7, i1 false)
  %26 = icmp eq ptr %1, null
  %27 = select i1 %26, ptr @.str, ptr %1
  %28 = call i32 @nvif_object_ctor(ptr noundef %0, ptr noundef %27, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %20, i32 noundef %14, ptr noundef %8) #6
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.nvif_mmu, ptr %0, i32 0, i32 8
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr %struct.anon.1, ptr %32, i32 %3
  %34 = load i8, ptr %33, align 1
  %35 = getelementptr inbounds %struct.nvif_mem, ptr %8, i32 0, i32 1
  store i8 %34, ptr %35, align 8
  %36 = load i8, ptr %23, align 2
  %37 = getelementptr inbounds %struct.nvif_mem, ptr %8, i32 0, i32 2
  store i8 %36, ptr %37, align 1
  %38 = getelementptr inbounds %struct.nvif_mem_v0, ptr %20, i32 0, i32 5
  %39 = load i64, ptr %38, align 8
  %40 = getelementptr inbounds %struct.nvif_mem, ptr %8, i32 0, i32 3
  store i64 %39, ptr %40, align 8
  %41 = load i64, ptr %24, align 8
  %42 = getelementptr inbounds %struct.nvif_mem, ptr %8, i32 0, i32 4
  store i64 %41, ptr %42, align 8
  br label %43

43:                                               ; preds = %30, %19
  %44 = icmp eq ptr %20, %10
  br i1 %44, label %46, label %45

45:                                               ; preds = %43
  call void @kfree(ptr noundef nonnull %20) #6
  br label %46

46:                                               ; preds = %45, %43, %16, %9
  %47 = phi i32 [ -22, %9 ], [ -12, %16 ], [ %28, %45 ], [ %28, %43 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %10) #6
  ret i32 %47
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
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
