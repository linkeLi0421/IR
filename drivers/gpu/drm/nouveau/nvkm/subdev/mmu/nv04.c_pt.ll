; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/nv04.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/nv04.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_mmu_func = type { ptr, i8, %struct.anon, %struct.anon.0, %struct.anon.2, ptr, i8 }
%struct.anon = type { %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.anon.0 = type { %struct.nvkm_sclass, ptr, ptr }
%struct.anon.2 = type { %struct.nvkm_sclass, ptr, i8, i32 }

@nv04_mmu = dso_local constant %struct.nvkm_mmu_func { ptr null, i8 32, %struct.anon { %struct.nvkm_sclass { i32 -1, i32 -1, i32 -2147483639, ptr null, ptr null } }, %struct.anon.0 { %struct.nvkm_sclass { i32 -1, i32 -1, i32 -2147483637, ptr null, ptr null }, ptr @nv04_mem_new, ptr @nv04_mem_map }, %struct.anon.2 { %struct.nvkm_sclass { i32 -1, i32 -1, i32 -2147483635, ptr null, ptr null }, ptr @nv04_vmm_new, i8 1, i32 0 }, ptr null, i8 0 }, align 4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_mem_new(ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_mem_map(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_vmm_new(ptr noundef, i1 noundef zeroext, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv04_mmu_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = tail call i32 @nvkm_mmu_new_(ptr noundef nonnull @nv04_mmu, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #2
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mmu_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
