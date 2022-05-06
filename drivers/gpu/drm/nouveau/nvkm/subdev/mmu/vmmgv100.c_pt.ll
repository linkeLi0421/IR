; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgv100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgv100.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_vmm_desc = type { i32, i8, i8, i32, ptr }
%struct.nvkm_vmm_page = type { i8, ptr, i8 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nvkm_memory_ptrs = type { ptr, ptr }

@gp100_vmm_desc_16 = external dso_local constant [0 x %struct.nvkm_vmm_desc], align 4
@gp100_vmm_desc_12 = external dso_local constant [0 x %struct.nvkm_vmm_desc], align 4
@gv100_vmm = internal constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, [7 x %struct.nvkm_vmm_page] }> <{ ptr @gv100_vmm_join, ptr @gf100_vmm_part, ptr @gf100_vmm_aper, ptr @gp100_vmm_valid, ptr @gp100_vmm_flush, ptr @gp100_vmm_mthd, ptr @gp100_vmm_invalidate_pdb, [4 x i8] undef, i64 0, [7 x %struct.nvkm_vmm_page] [%struct.nvkm_vmm_page { i8 47, ptr getelementptr (i8, ptr @gp100_vmm_desc_16, i64 64), i8 1 }, %struct.nvkm_vmm_page { i8 38, ptr getelementptr (i8, ptr @gp100_vmm_desc_16, i64 48), i8 1 }, %struct.nvkm_vmm_page { i8 29, ptr getelementptr (i8, ptr @gp100_vmm_desc_16, i64 32), i8 1 }, %struct.nvkm_vmm_page { i8 21, ptr getelementptr (i8, ptr @gp100_vmm_desc_16, i64 16), i8 11 }, %struct.nvkm_vmm_page { i8 16, ptr @gp100_vmm_desc_16, i8 11 }, %struct.nvkm_vmm_page { i8 12, ptr @gp100_vmm_desc_12, i8 7 }, %struct.nvkm_vmm_page zeroinitializer] }>, align 8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gv100_vmm_join(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @gp100_vmm_join(ptr noundef %0, ptr noundef %1) #2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %59

5:                                                ; preds = %2
  %6 = load ptr, ptr %1, align 4
  %7 = getelementptr inbounds %struct.nvkm_memory_func, ptr %6, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr %8(ptr noundef %1) #2
  %10 = getelementptr inbounds %struct.nvkm_memory, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %1, i64 noundef 512) #2
  %14 = load ptr, ptr %10, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %1, i64 noundef 516) #2
  %17 = load ptr, ptr %10, align 4
  %18 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  tail call void %19(ptr noundef %1, i64 noundef 540, i32 noundef 0) #2
  %20 = load ptr, ptr %10, align 4
  %21 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void %22(ptr noundef %1, i64 noundef 676, i32 noundef %16) #2
  %23 = load ptr, ptr %10, align 4
  %24 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  tail call void %25(ptr noundef %1, i64 noundef 672, i32 noundef %13) #2
  %26 = load ptr, ptr %10, align 4
  %27 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  tail call void %28(ptr noundef %1, i64 noundef 680, i32 noundef 0) #2
  br label %29

29:                                               ; preds = %29, %5
  %30 = phi i32 [ 1, %5 ], [ %47, %29 ]
  %31 = load ptr, ptr %10, align 4
  %32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = shl i32 %30, 4
  %35 = add nuw nsw i32 %34, 676
  %36 = sext i32 %35 to i64
  tail call void %33(ptr noundef %1, i64 noundef %36, i32 noundef 1) #2
  %37 = load ptr, ptr %10, align 4
  %38 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = add nuw nsw i32 %34, 672
  %41 = sext i32 %40 to i64
  tail call void %39(ptr noundef %1, i64 noundef %41, i32 noundef 1) #2
  %42 = load ptr, ptr %10, align 4
  %43 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = add nuw nsw i32 %34, 680
  %46 = sext i32 %45 to i64
  tail call void %44(ptr noundef %1, i64 noundef %46, i32 noundef 0) #2
  %47 = add nuw nsw i32 %30, 1
  %48 = icmp eq i32 %47, 64
  br i1 %48, label %49, label %29, !llvm.loop !8

49:                                               ; preds = %29
  %50 = load ptr, ptr %10, align 4
  %51 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %50, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  tail call void %52(ptr noundef %1, i64 noundef 664, i32 noundef 1) #2
  %53 = load ptr, ptr %10, align 4
  %54 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %53, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  tail call void %55(ptr noundef %1, i64 noundef 668, i32 noundef 0) #2
  %56 = load ptr, ptr %1, align 4
  %57 = getelementptr inbounds %struct.nvkm_memory_func, ptr %56, i32 0, i32 8
  %58 = load ptr, ptr %57, align 4
  tail call void %58(ptr noundef %1) #2
  br label %59

59:                                               ; preds = %49, %2
  %60 = phi i32 [ 0, %49 ], [ %3, %2 ]
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp100_vmm_join(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gv100_vmm_new(ptr noundef %0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = tail call i32 @gp100_vmm_new_(ptr noundef nonnull @gv100_vmm, ptr noundef %0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) #2
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp100_vmm_new_(ptr noundef, ptr noundef, i1 noundef zeroext, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_vmm_part(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_vmm_aper(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp100_vmm_valid(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp100_vmm_flush(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp100_vmm_mthd(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp100_vmm_invalidate_pdb(ptr noundef, i64 noundef) #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.peeled.count", i32 1}
