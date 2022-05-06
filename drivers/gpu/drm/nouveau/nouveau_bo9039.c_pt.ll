; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nouveau_bo9039.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_bo9039.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon = type { %struct.nvif_push, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.0 }
%struct.anon.0 = type { ptr, i64 }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.nouveau_mem = type { %struct.ttm_resource, ptr, i8, i8, %struct.nvif_mem, [2 x %struct.nvif_vma] }
%struct.nvif_vma = type { i64, i64 }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvc0_bo_move_m2mf(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ttm_resource, ptr %3, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %71, label %10

10:                                               ; preds = %4
  %11 = getelementptr %struct.nouveau_mem, ptr %2, i32 0, i32 5, i32 1
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nouveau_mem, ptr %2, i32 0, i32 5
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nvif_push, ptr %6, i32 0, i32 4
  %16 = getelementptr inbounds %struct.nvif_push, ptr %6, i32 0, i32 6
  br label %17

17:                                               ; preds = %31, %10
  %18 = phi i64 [ %14, %10 ], [ %68, %31 ]
  %19 = phi i64 [ %12, %10 ], [ %69, %31 ]
  %20 = phi i32 [ %8, %10 ], [ %65, %31 ]
  %21 = load ptr, ptr %15, align 4
  %22 = getelementptr i32, ptr %21, i32 12
  %23 = load ptr, ptr %16, align 4
  %24 = icmp ult ptr %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %17
  %26 = load ptr, ptr %6, align 8
  %27 = tail call i32 %26(ptr noundef %6, i32 noundef 12) #2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %71

29:                                               ; preds = %25
  %30 = load ptr, ptr %15, align 4
  br label %31

31:                                               ; preds = %29, %17
  %32 = phi ptr [ %30, %29 ], [ %21, %17 ]
  %33 = tail call i32 @llvm.umin.i32(i32 %20, i32 2047)
  %34 = getelementptr i32, ptr %32, i32 1
  store ptr %34, ptr %15, align 4
  store i32 537034894, ptr %32, align 4
  %35 = lshr i64 %19, 32
  %36 = trunc i64 %35 to i32
  %37 = and i32 %36, 255
  %38 = load ptr, ptr %15, align 4
  %39 = getelementptr i32, ptr %38, i32 1
  store ptr %39, ptr %15, align 4
  store i32 %37, ptr %38, align 4
  %40 = trunc i64 %19 to i32
  %41 = load ptr, ptr %15, align 4
  %42 = getelementptr i32, ptr %41, i32 1
  store ptr %42, ptr %15, align 4
  store i32 %40, ptr %41, align 4
  %43 = load ptr, ptr %15, align 4
  %44 = getelementptr i32, ptr %43, i32 1
  store ptr %44, ptr %15, align 4
  store i32 537297091, ptr %43, align 4
  %45 = lshr i64 %18, 32
  %46 = trunc i64 %45 to i32
  %47 = and i32 %46, 255
  %48 = load ptr, ptr %15, align 4
  %49 = getelementptr i32, ptr %48, i32 1
  store ptr %49, ptr %15, align 4
  store i32 %47, ptr %48, align 4
  %50 = trunc i64 %18 to i32
  %51 = load ptr, ptr %15, align 4
  %52 = getelementptr i32, ptr %51, i32 1
  store ptr %52, ptr %15, align 4
  store i32 %50, ptr %51, align 4
  %53 = load ptr, ptr %15, align 4
  %54 = getelementptr i32, ptr %53, i32 1
  store ptr %54, ptr %15, align 4
  store i32 4096, ptr %53, align 4
  %55 = load ptr, ptr %15, align 4
  %56 = getelementptr i32, ptr %55, i32 1
  store ptr %56, ptr %15, align 4
  store i32 4096, ptr %55, align 4
  %57 = load ptr, ptr %15, align 4
  %58 = getelementptr i32, ptr %57, i32 1
  store ptr %58, ptr %15, align 4
  store i32 4096, ptr %57, align 4
  %59 = load ptr, ptr %15, align 4
  %60 = getelementptr i32, ptr %59, i32 1
  store ptr %60, ptr %15, align 4
  store i32 %33, ptr %59, align 4
  %61 = load ptr, ptr %15, align 4
  %62 = getelementptr i32, ptr %61, i32 1
  store ptr %62, ptr %15, align 4
  store i32 536969408, ptr %61, align 4
  %63 = load ptr, ptr %15, align 4
  %64 = getelementptr i32, ptr %63, i32 1
  store ptr %64, ptr %15, align 4
  store i32 1048848, ptr %63, align 4
  %65 = sub i32 %20, %33
  %66 = shl nuw nsw i32 %33, 12
  %67 = zext i32 %66 to i64
  %68 = add i64 %18, %67
  %69 = add i64 %19, %67
  %70 = icmp eq i32 %65, 0
  br i1 %70, label %71, label %17

71:                                               ; preds = %31, %25, %4
  %72 = phi i32 [ 0, %4 ], [ %27, %25 ], [ 0, %31 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvc0_bo_move_init(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvif_push, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i32, ptr %6, i32 2
  %8 = getelementptr inbounds %struct.nvif_push, ptr %4, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ult ptr %7, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8
  %13 = tail call i32 %12(ptr noundef %4, i32 noundef 2) #2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load ptr, ptr %5, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi ptr [ %16, %15 ], [ %6, %2 ]
  %19 = getelementptr i32, ptr %18, i32 1
  store ptr %19, ptr %5, align 4
  store i32 536969216, ptr %18, align 4
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr i32, ptr %20, i32 1
  store ptr %21, ptr %5, align 4
  store i32 %1, ptr %20, align 4
  br label %22

22:                                               ; preds = %17, %11
  %23 = phi i32 [ 0, %17 ], [ %13, %11 ]
  ret i32 %23
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }

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
