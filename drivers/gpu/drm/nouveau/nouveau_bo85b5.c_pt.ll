; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nouveau_bo85b5.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_bo85b5.c"
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
define dso_local i32 @nva3_bo_move_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ttm_resource, ptr %3, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %67, label %10

10:                                               ; preds = %4
  %11 = getelementptr %struct.nouveau_mem, ptr %2, i32 0, i32 5, i32 1
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nouveau_mem, ptr %2, i32 0, i32 5
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nvif_push, ptr %6, i32 0, i32 4
  %16 = getelementptr inbounds %struct.nvif_push, ptr %6, i32 0, i32 6
  br label %17

17:                                               ; preds = %31, %10
  %18 = phi i64 [ %14, %10 ], [ %64, %31 ]
  %19 = phi i64 [ %12, %10 ], [ %65, %31 ]
  %20 = phi i32 [ %8, %10 ], [ %61, %31 ]
  %21 = load ptr, ptr %15, align 4
  %22 = getelementptr i32, ptr %21, i32 11
  %23 = load ptr, ptr %16, align 4
  %24 = icmp ult ptr %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %17
  %26 = load ptr, ptr %6, align 8
  %27 = tail call i32 %26(ptr noundef %6, i32 noundef 11) #2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %67

29:                                               ; preds = %25
  %30 = load ptr, ptr %15, align 4
  br label %31

31:                                               ; preds = %29, %17
  %32 = phi ptr [ %30, %29 ], [ %21, %17 ]
  %33 = tail call i32 @llvm.umin.i32(i32 %20, i32 8191)
  %34 = getelementptr i32, ptr %32, i32 1
  store ptr %34, ptr %15, align 4
  store i32 2130700, ptr %32, align 4
  %35 = lshr i64 %18, 32
  %36 = trunc i64 %35 to i32
  %37 = load ptr, ptr %15, align 4
  %38 = getelementptr i32, ptr %37, i32 1
  store ptr %38, ptr %15, align 4
  store i32 %36, ptr %37, align 4
  %39 = trunc i64 %18 to i32
  %40 = load ptr, ptr %15, align 4
  %41 = getelementptr i32, ptr %40, i32 1
  store ptr %41, ptr %15, align 4
  store i32 %39, ptr %40, align 4
  %42 = lshr i64 %19, 32
  %43 = trunc i64 %42 to i32
  %44 = load ptr, ptr %15, align 4
  %45 = getelementptr i32, ptr %44, i32 1
  store ptr %45, ptr %15, align 4
  store i32 %43, ptr %44, align 4
  %46 = trunc i64 %19 to i32
  %47 = load ptr, ptr %15, align 4
  %48 = getelementptr i32, ptr %47, i32 1
  store ptr %48, ptr %15, align 4
  store i32 %46, ptr %47, align 4
  %49 = load ptr, ptr %15, align 4
  %50 = getelementptr i32, ptr %49, i32 1
  store ptr %50, ptr %15, align 4
  store i32 4096, ptr %49, align 4
  %51 = load ptr, ptr %15, align 4
  %52 = getelementptr i32, ptr %51, i32 1
  store ptr %52, ptr %15, align 4
  store i32 4096, ptr %51, align 4
  %53 = load ptr, ptr %15, align 4
  %54 = getelementptr i32, ptr %53, i32 1
  store ptr %54, ptr %15, align 4
  store i32 4096, ptr %53, align 4
  %55 = load ptr, ptr %15, align 4
  %56 = getelementptr i32, ptr %55, i32 1
  store ptr %56, ptr %15, align 4
  store i32 %33, ptr %55, align 4
  %57 = load ptr, ptr %15, align 4
  %58 = getelementptr i32, ptr %57, i32 1
  store ptr %58, ptr %15, align 4
  store i32 295680, ptr %57, align 4
  %59 = load ptr, ptr %15, align 4
  %60 = getelementptr i32, ptr %59, i32 1
  store ptr %60, ptr %15, align 4
  store i32 272, ptr %59, align 4
  %61 = sub i32 %20, %33
  %62 = shl nuw nsw i32 %33, 12
  %63 = zext i32 %62 to i64
  %64 = add i64 %18, %63
  %65 = add i64 %19, %63
  %66 = icmp eq i32 %61, 0
  br i1 %66, label %67, label %17

67:                                               ; preds = %31, %25, %4
  %68 = phi i32 [ 0, %4 ], [ %27, %25 ], [ 0, %31 ]
  ret i32 %68
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
