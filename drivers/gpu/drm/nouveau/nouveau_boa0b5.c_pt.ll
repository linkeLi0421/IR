; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nouveau_boa0b5.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_boa0b5.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon = type { %struct.nvif_push, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.0 }
%struct.anon.0 = type { ptr, i64 }
%struct.nouveau_mem = type { %struct.ttm_resource, ptr, i8, i8, %struct.nvif_mem, [2 x %struct.nvif_vma] }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.nvif_vma = type { i64, i64 }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nve0_bo_move_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvif_push, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i32, ptr %8, i32 10
  %10 = getelementptr inbounds %struct.nvif_push, ptr %6, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = icmp ult ptr %9, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %6, align 8
  %15 = tail call i32 %14(ptr noundef %6, i32 noundef 10) #1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %56

17:                                               ; preds = %13
  %18 = load ptr, ptr %7, align 4
  br label %19

19:                                               ; preds = %17, %4
  %20 = phi ptr [ %18, %17 ], [ %8, %4 ]
  %21 = getelementptr i32, ptr %20, i32 1
  store ptr %21, ptr %7, align 4
  store i32 537428224, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nouveau_mem, ptr %2, i32 0, i32 5
  %23 = load i64, ptr %22, align 8
  %24 = lshr i64 %23, 32
  %25 = trunc i64 %24 to i32
  %26 = and i32 %25, 255
  %27 = load ptr, ptr %7, align 4
  %28 = getelementptr i32, ptr %27, i32 1
  store ptr %28, ptr %7, align 4
  store i32 %26, ptr %27, align 4
  %29 = load i64, ptr %22, align 8
  %30 = trunc i64 %29 to i32
  %31 = load ptr, ptr %7, align 4
  %32 = getelementptr i32, ptr %31, i32 1
  store ptr %32, ptr %7, align 4
  store i32 %30, ptr %31, align 4
  %33 = getelementptr %struct.nouveau_mem, ptr %2, i32 0, i32 5, i32 1
  %34 = load i64, ptr %33, align 8
  %35 = lshr i64 %34, 32
  %36 = trunc i64 %35 to i32
  %37 = and i32 %36, 255
  %38 = load ptr, ptr %7, align 4
  %39 = getelementptr i32, ptr %38, i32 1
  store ptr %39, ptr %7, align 4
  store i32 %37, ptr %38, align 4
  %40 = load i64, ptr %33, align 8
  %41 = trunc i64 %40 to i32
  %42 = load ptr, ptr %7, align 4
  %43 = getelementptr i32, ptr %42, i32 1
  store ptr %43, ptr %7, align 4
  store i32 %41, ptr %42, align 4
  %44 = load ptr, ptr %7, align 4
  %45 = getelementptr i32, ptr %44, i32 1
  store ptr %45, ptr %7, align 4
  store i32 4096, ptr %44, align 4
  %46 = load ptr, ptr %7, align 4
  %47 = getelementptr i32, ptr %46, i32 1
  store ptr %47, ptr %7, align 4
  store i32 4096, ptr %46, align 4
  %48 = load ptr, ptr %7, align 4
  %49 = getelementptr i32, ptr %48, i32 1
  store ptr %49, ptr %7, align 4
  store i32 4096, ptr %48, align 4
  %50 = getelementptr inbounds %struct.ttm_resource, ptr %3, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = load ptr, ptr %7, align 4
  %53 = getelementptr i32, ptr %52, i32 1
  store ptr %53, ptr %7, align 4
  store i32 %51, ptr %52, align 4
  %54 = load ptr, ptr %7, align 4
  %55 = getelementptr i32, ptr %54, i32 1
  store ptr %55, ptr %7, align 4
  store i32 -2088337216, ptr %54, align 4
  br label %56

56:                                               ; preds = %19, %13
  %57 = phi i32 [ 0, %19 ], [ %15, %13 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nve0_bo_move_init(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
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
  %13 = tail call i32 %12(ptr noundef %4, i32 noundef 2) #1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = load ptr, ptr %5, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi ptr [ %16, %15 ], [ %6, %2 ]
  %19 = getelementptr i32, ptr %18, i32 1
  store ptr %19, ptr %5, align 4
  store i32 536969216, ptr %18, align 4
  %20 = and i32 %1, 65535
  %21 = load ptr, ptr %5, align 4
  %22 = getelementptr i32, ptr %21, i32 1
  store ptr %22, ptr %5, align 4
  store i32 %20, ptr %21, align 4
  br label %23

23:                                               ; preds = %17, %11
  %24 = phi i32 [ 0, %17 ], [ %13, %11 ]
  ret i32 %24
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }

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
