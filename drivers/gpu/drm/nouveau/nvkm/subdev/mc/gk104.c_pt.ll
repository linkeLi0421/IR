; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/mc/gk104.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mc/gk104.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_mc_map = type { i32, i32, i32, i8 }
%struct.nvkm_mc_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@gk104_mc_reset = dso_local constant [3 x %struct.nvkm_mc_map] [%struct.nvkm_mc_map { i32 256, i32 32, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 8192, i32 19, i32 0, i8 1 }, %struct.nvkm_mc_map zeroinitializer], align 4
@gk104_mc_intr = dso_local constant [13 x %struct.nvkm_mc_map] [%struct.nvkm_mc_map { i32 67108864, i32 30, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 256, i32 32, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 1073741824, i32 4, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 268435456, i32 10, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 134217728, i32 13, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 33554432, i32 14, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 16777216, i32 19, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 2097152, i32 5, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 2097152, i32 6, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 1048576, i32 11, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 262144, i32 22, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 8192, i32 13, i32 0, i8 0 }, %struct.nvkm_mc_map zeroinitializer], align 4
@gk104_mc = internal constant %struct.nvkm_mc_func { ptr @nv50_mc_init, ptr @gk104_mc_intr, ptr @gf100_mc_intr_unarm, ptr @gf100_mc_intr_rearm, ptr @gf100_mc_intr_mask, ptr @gf100_mc_intr_stat, ptr @gk104_mc_reset, ptr @gf100_mc_unk260 }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk104_mc_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nvkm_mc_new_(ptr noundef nonnull @gk104_mc, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #2
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mc_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_mc_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_mc_intr_unarm(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_mc_intr_rearm(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_mc_intr_mask(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_mc_intr_stat(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_mc_unk260(ptr noundef, i32 noundef) #1

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
