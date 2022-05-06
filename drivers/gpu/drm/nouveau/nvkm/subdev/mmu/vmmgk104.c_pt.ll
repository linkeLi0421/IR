; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgk104.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgk104.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_vmm_desc_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_vmm_desc = type { i32, i8, i8, i32, ptr }
%struct.nvkm_vmm_page = type { i8, ptr, i8 }
%struct.nvkm_mmu_pt = type { %union.anon, ptr, i8, i16, i64, %struct.list_head }
%union.anon = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nvkm_memory_ptrs = type { ptr, ptr }

@gf100_vmm_pgt = external dso_local constant %struct.nvkm_vmm_desc_func, align 4
@gf100_vmm_pgd = external dso_local constant %struct.nvkm_vmm_desc_func, align 4
@gk104_vmm_desc_17_12 = dso_local constant [3 x %struct.nvkm_vmm_desc] [%struct.nvkm_vmm_desc { i32 2, i8 15, i8 8, i32 4096, ptr @gf100_vmm_pgt }, %struct.nvkm_vmm_desc { i32 0, i8 13, i8 8, i32 4096, ptr @gf100_vmm_pgd }, %struct.nvkm_vmm_desc zeroinitializer], align 4
@gk104_vmm_lpt = internal constant %struct.nvkm_vmm_desc_func { ptr @gk104_vmm_lpt_invalid, ptr @gf100_vmm_pgt_unmap, ptr null, ptr null, ptr @gf100_vmm_pgt_mem, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@gk104_vmm_desc_17_17 = dso_local constant [3 x %struct.nvkm_vmm_desc] [%struct.nvkm_vmm_desc { i32 3, i8 10, i8 8, i32 4096, ptr @gk104_vmm_lpt }, %struct.nvkm_vmm_desc { i32 0, i8 13, i8 8, i32 4096, ptr @gf100_vmm_pgd }, %struct.nvkm_vmm_desc zeroinitializer], align 4
@gk104_vmm_desc_16_12 = dso_local constant [3 x %struct.nvkm_vmm_desc] [%struct.nvkm_vmm_desc { i32 2, i8 14, i8 8, i32 4096, ptr @gf100_vmm_pgt }, %struct.nvkm_vmm_desc { i32 0, i8 14, i8 8, i32 4096, ptr @gf100_vmm_pgd }, %struct.nvkm_vmm_desc zeroinitializer], align 4
@gk104_vmm_desc_16_16 = dso_local constant [3 x %struct.nvkm_vmm_desc] [%struct.nvkm_vmm_desc { i32 3, i8 10, i8 8, i32 4096, ptr @gk104_vmm_lpt }, %struct.nvkm_vmm_desc { i32 0, i8 14, i8 8, i32 4096, ptr @gf100_vmm_pgd }, %struct.nvkm_vmm_desc zeroinitializer], align 4
@gk104_vmm_16 = internal constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, [3 x %struct.nvkm_vmm_page] }> <{ ptr @gf100_vmm_join, ptr @gf100_vmm_part, ptr @gf100_vmm_aper, ptr @gf100_vmm_valid, ptr @gf100_vmm_flush, ptr null, ptr @gf100_vmm_invalidate_pdb, [4 x i8] undef, i64 0, [3 x %struct.nvkm_vmm_page] [%struct.nvkm_vmm_page { i8 16, ptr @gk104_vmm_desc_16_16, i8 10 }, %struct.nvkm_vmm_page { i8 12, ptr @gk104_vmm_desc_16_12, i8 6 }, %struct.nvkm_vmm_page zeroinitializer] }>, align 8
@gk104_vmm_17 = internal constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, [3 x %struct.nvkm_vmm_page] }> <{ ptr @gf100_vmm_join, ptr @gf100_vmm_part, ptr @gf100_vmm_aper, ptr @gf100_vmm_valid, ptr @gf100_vmm_flush, ptr null, ptr @gf100_vmm_invalidate_pdb, [4 x i8] undef, i64 0, [3 x %struct.nvkm_vmm_page] [%struct.nvkm_vmm_page { i8 17, ptr @gk104_vmm_desc_17_17, i8 10 }, %struct.nvkm_vmm_page { i8 12, ptr @gk104_vmm_desc_17_12, i8 6 }, %struct.nvkm_vmm_page zeroinitializer] }>, align 8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gk104_vmm_lpt_invalid(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = shl i32 %2, 3
  %6 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 3
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = add i32 %5, %8
  %10 = zext i32 %9 to i64
  %11 = zext i32 %3 to i64
  %12 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nvkm_memory_func, ptr %14, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = tail call ptr %16(ptr noundef %13) #2
  %18 = icmp eq ptr %17, null
  %19 = icmp eq i32 %3, 0
  br i1 %18, label %20, label %21, !prof !8

20:                                               ; preds = %4
  br i1 %19, label %50, label %33

21:                                               ; preds = %4
  br i1 %19, label %50, label %22

22:                                               ; preds = %21
  %23 = lshr i64 %10, 3
  br label %24

24:                                               ; preds = %24, %22
  %25 = phi i64 [ %27, %24 ], [ %11, %22 ]
  %26 = phi i64 [ %28, %24 ], [ %23, %22 ]
  %27 = add nsw i64 %25, -1
  %28 = add nuw nsw i64 %26, 1
  %29 = trunc i64 %26 to i32
  %30 = getelementptr i64, ptr %17, i32 %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !9
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 2) #2, !srcloc !10
  %31 = getelementptr i32, ptr %30, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !9
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 0) #2, !srcloc !10
  %32 = icmp eq i64 %27, 0
  br i1 %32, label %50, label %24

33:                                               ; preds = %33, %20
  %34 = phi i64 [ %48, %33 ], [ %10, %20 ]
  %35 = phi i64 [ %47, %33 ], [ %11, %20 ]
  %36 = load ptr, ptr %12, align 4
  %37 = getelementptr inbounds %struct.nvkm_memory, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  tail call void %40(ptr noundef %36, i64 noundef %34, i32 noundef 2) #2
  %41 = load ptr, ptr %12, align 4
  %42 = getelementptr inbounds %struct.nvkm_memory, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = add nuw nsw i64 %34, 4
  tail call void %45(ptr noundef %41, i64 noundef %46, i32 noundef 0) #2
  %47 = add nsw i64 %35, -1
  %48 = add nuw nsw i64 %34, 8
  %49 = icmp eq i64 %47, 0
  br i1 %49, label %50, label %33

50:                                               ; preds = %33, %24, %21, %20
  %51 = load ptr, ptr %12, align 4
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nvkm_memory_func, ptr %52, i32 0, i32 8
  %54 = load ptr, ptr %53, align 4
  tail call void %54(ptr noundef %51) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk104_vmm_new(ptr noundef %0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = tail call i32 @gf100_vmm_new_(ptr noundef nonnull @gk104_vmm_16, ptr noundef nonnull @gk104_vmm_17, ptr noundef %0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) #2
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_vmm_new_(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_vmm_pgt_unmap(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_vmm_pgt_mem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_vmm_join(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_vmm_part(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_vmm_aper(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_vmm_valid(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_vmm_flush(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_vmm_invalidate_pdb(ptr noundef, i64 noundef) #1

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2151502505}
!10 = !{i64 3961412}
