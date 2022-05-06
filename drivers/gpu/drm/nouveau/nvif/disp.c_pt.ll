; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvif/disp.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvif/disp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvif_mclass = type { i32, i32 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.nvif_sclass = type { i32, i32, i32 }

@nvif_disp_ctor.disps = internal unnamed_addr constant [17 x %struct.nvif_mclass] [%struct.nvif_mclass { i32 50800, i32 -1 }, %struct.nvif_mclass { i32 50544, i32 -1 }, %struct.nvif_mclass { i32 50032, i32 -1 }, %struct.nvif_mclass { i32 39024, i32 -1 }, %struct.nvif_mclass { i32 38768, i32 -1 }, %struct.nvif_mclass { i32 38256, i32 -1 }, %struct.nvif_mclass { i32 38000, i32 -1 }, %struct.nvif_mclass { i32 37488, i32 -1 }, %struct.nvif_mclass { i32 37232, i32 -1 }, %struct.nvif_mclass { i32 36976, i32 -1 }, %struct.nvif_mclass { i32 34160, i32 -1 }, %struct.nvif_mclass { i32 34928, i32 -1 }, %struct.nvif_mclass { i32 33648, i32 -1 }, %struct.nvif_mclass { i32 33392, i32 -1 }, %struct.nvif_mclass { i32 20592, i32 -1 }, %struct.nvif_mclass { i32 70, i32 -1 }, %struct.nvif_mclass zeroinitializer], align 4
@.str = private unnamed_addr constant [9 x i8] c"nvifDisp\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvif_disp_dtor(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @nvif_object_dtor(ptr noundef %0) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_dtor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvif_disp_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 4
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %7, %4
  %8 = phi i32 [ %14, %7 ], [ 0, %4 ]
  %9 = getelementptr %struct.nvif_mclass, ptr @nvif_disp_ctor.disps, i32 %8
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  %12 = icmp eq i32 %10, %2
  %13 = or i1 %11, %12
  %14 = add nuw nsw i32 %8, 1
  br i1 %13, label %15, label %7

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.nvif_object, ptr %3, i32 0, i32 1
  store ptr null, ptr %16, align 4
  br i1 %11, label %63, label %56

17:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #3
  store ptr null, ptr %5, align 4, !annotation !8
  %18 = call i32 @nvif_object_sclass_get(ptr noundef %0, ptr noundef nonnull %5) #3
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #3
  %21 = getelementptr inbounds %struct.nvif_object, ptr %3, i32 0, i32 1
  store ptr null, ptr %21, align 4
  br label %63

22:                                               ; preds = %17
  %23 = icmp eq i32 %18, 0
  %24 = load ptr, ptr %5, align 4
  br label %25

25:                                               ; preds = %47, %22
  %26 = phi i32 [ 50800, %22 ], [ %50, %47 ]
  %27 = phi i32 [ 0, %22 ], [ %48, %47 ]
  br i1 %23, label %47, label %28

28:                                               ; preds = %25
  %29 = getelementptr %struct.nvif_mclass, ptr @nvif_disp_ctor.disps, i32 %27, i32 1
  br label %30

30:                                               ; preds = %44, %28
  %31 = phi i32 [ 0, %28 ], [ %45, %44 ]
  %32 = getelementptr %struct.nvif_sclass, ptr %24, i32 %31
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %26, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load i32, ptr %29, align 4
  %37 = getelementptr %struct.nvif_sclass, ptr %24, i32 %31, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = getelementptr %struct.nvif_sclass, ptr %24, i32 %31, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = icmp sgt i32 %36, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40, %35, %30
  %45 = add nuw nsw i32 %31, 1
  %46 = icmp eq i32 %45, %18
  br i1 %46, label %47, label %30

47:                                               ; preds = %44, %25
  %48 = add nuw nsw i32 %27, 1
  %49 = getelementptr %struct.nvif_mclass, ptr @nvif_disp_ctor.disps, i32 %48
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %48, 16
  br i1 %51, label %54, label %25

52:                                               ; preds = %40
  call void @nvif_object_sclass_put(ptr noundef nonnull %5) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #3
  %53 = getelementptr inbounds %struct.nvif_object, ptr %3, i32 0, i32 1
  store ptr null, ptr %53, align 4
  br label %56

54:                                               ; preds = %47
  call void @nvif_object_sclass_put(ptr noundef nonnull %5) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #3
  %55 = getelementptr inbounds %struct.nvif_object, ptr %3, i32 0, i32 1
  store ptr null, ptr %55, align 4
  br label %63

56:                                               ; preds = %52, %15
  %57 = phi i32 [ %27, %52 ], [ %8, %15 ]
  %58 = icmp eq ptr %1, null
  %59 = select i1 %58, ptr @.str, ptr %1
  %60 = getelementptr [17 x %struct.nvif_mclass], ptr @nvif_disp_ctor.disps, i32 0, i32 %57
  %61 = load i32, ptr %60, align 4
  %62 = call i32 @nvif_object_ctor(ptr noundef %0, ptr noundef %59, i32 noundef 0, i32 noundef %61, ptr noundef null, i32 noundef 0, ptr noundef %3) #3
  br label %63

63:                                               ; preds = %56, %54, %20, %15
  %64 = phi i32 [ %62, %56 ], [ -19, %54 ], [ -19, %20 ], [ -38, %15 ]
  ret i32 %64
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_sclass_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_sclass_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
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
!8 = !{!"auto-init"}
