; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgk20a.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgk20a.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_vmm_desc = type { i32, i8, i8, i32, ptr }
%struct.nvkm_vmm_page = type { i8, ptr, i8 }

@gk104_vmm_desc_16_16 = external dso_local constant [0 x %struct.nvkm_vmm_desc], align 4
@gk104_vmm_desc_16_12 = external dso_local constant [0 x %struct.nvkm_vmm_desc], align 4
@gk20a_vmm_16 = internal constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, [3 x %struct.nvkm_vmm_page] }> <{ ptr @gf100_vmm_join, ptr @gf100_vmm_part, ptr @gf100_vmm_aper, ptr @gf100_vmm_valid, ptr @gf100_vmm_flush, ptr null, ptr @gf100_vmm_invalidate_pdb, [4 x i8] undef, i64 0, [3 x %struct.nvkm_vmm_page] [%struct.nvkm_vmm_page { i8 16, ptr @gk104_vmm_desc_16_16, i8 12 }, %struct.nvkm_vmm_page { i8 12, ptr @gk104_vmm_desc_16_12, i8 4 }, %struct.nvkm_vmm_page zeroinitializer] }>, align 8
@gk104_vmm_desc_17_17 = external dso_local constant [0 x %struct.nvkm_vmm_desc], align 4
@gk104_vmm_desc_17_12 = external dso_local constant [0 x %struct.nvkm_vmm_desc], align 4
@gk20a_vmm_17 = internal constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, [3 x %struct.nvkm_vmm_page] }> <{ ptr @gf100_vmm_join, ptr @gf100_vmm_part, ptr @gf100_vmm_aper, ptr @gf100_vmm_valid, ptr @gf100_vmm_flush, ptr null, ptr @gf100_vmm_invalidate_pdb, [4 x i8] undef, i64 0, [3 x %struct.nvkm_vmm_page] [%struct.nvkm_vmm_page { i8 17, ptr @gk104_vmm_desc_17_17, i8 12 }, %struct.nvkm_vmm_page { i8 12, ptr @gk104_vmm_desc_17_12, i8 4 }, %struct.nvkm_vmm_page zeroinitializer] }>, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @gk20a_vmm_aper(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 3
  %3 = select i1 %2, i32 0, i32 -22
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk20a_vmm_new(ptr noundef %0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #1 {
  %10 = tail call i32 @gf100_vmm_new_(ptr noundef nonnull @gk20a_vmm_16, ptr noundef nonnull @gk20a_vmm_17, ptr noundef %0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) #3
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_vmm_new_(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_vmm_join(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_vmm_part(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_vmm_aper(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_vmm_valid(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_vmm_flush(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_vmm_invalidate_pdb(ptr noundef, i64 noundef) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
