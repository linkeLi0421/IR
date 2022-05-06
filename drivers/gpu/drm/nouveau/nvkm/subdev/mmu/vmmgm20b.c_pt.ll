; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgm20b.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgm20b.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_vmm_desc = type { i32, i8, i8, i32, ptr }
%struct.nvkm_vmm_page = type { i8, ptr, i8 }

@gm200_vmm_desc_16_16 = external dso_local constant [0 x %struct.nvkm_vmm_desc], align 4
@gm200_vmm_desc_16_12 = external dso_local constant [0 x %struct.nvkm_vmm_desc], align 4
@gm20b_vmm_16 = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4 x %struct.nvkm_vmm_page] } { ptr @gm200_vmm_join, ptr @gf100_vmm_part, ptr @gk20a_vmm_aper, ptr @gf100_vmm_valid, ptr @gf100_vmm_flush, ptr null, ptr @gf100_vmm_invalidate_pdb, i64 0, [4 x %struct.nvkm_vmm_page] [%struct.nvkm_vmm_page { i8 27, ptr getelementptr (i8, ptr @gm200_vmm_desc_16_16, i64 16), i8 1 }, %struct.nvkm_vmm_page { i8 16, ptr @gm200_vmm_desc_16_16, i8 13 }, %struct.nvkm_vmm_page { i8 12, ptr @gm200_vmm_desc_16_12, i8 5 }, %struct.nvkm_vmm_page zeroinitializer] }, align 8
@gm200_vmm_desc_17_17 = external dso_local constant [0 x %struct.nvkm_vmm_desc], align 4
@gm200_vmm_desc_17_12 = external dso_local constant [0 x %struct.nvkm_vmm_desc], align 4
@gm20b_vmm_17 = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4 x %struct.nvkm_vmm_page] } { ptr @gm200_vmm_join, ptr @gf100_vmm_part, ptr @gk20a_vmm_aper, ptr @gf100_vmm_valid, ptr @gf100_vmm_flush, ptr null, ptr @gf100_vmm_invalidate_pdb, i64 0, [4 x %struct.nvkm_vmm_page] [%struct.nvkm_vmm_page { i8 27, ptr getelementptr (i8, ptr @gm200_vmm_desc_17_17, i64 16), i8 1 }, %struct.nvkm_vmm_page { i8 17, ptr @gm200_vmm_desc_17_17, i8 13 }, %struct.nvkm_vmm_page { i8 12, ptr @gm200_vmm_desc_17_12, i8 5 }, %struct.nvkm_vmm_page zeroinitializer] }, align 8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm20b_vmm_new(ptr noundef %0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = tail call i32 @gm200_vmm_new_(ptr noundef nonnull @gm20b_vmm_16, ptr noundef nonnull @gm20b_vmm_17, ptr noundef %0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) #2
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_vmm_new_(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm20b_vmm_new_fixed(ptr noundef %0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = tail call i32 @gf100_vmm_new_(ptr noundef nonnull @gm20b_vmm_16, ptr noundef nonnull @gm20b_vmm_17, ptr noundef %0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) #2
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_vmm_new_(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_vmm_join(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_vmm_part(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk20a_vmm_aper(i32 noundef) #1

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
