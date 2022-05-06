; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/disp/rootgp100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/rootgp100.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_disp_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nv50_disp_user = type { %struct.nvkm_sclass, ptr }

@gp100_disp_root_oclass = dso_local local_unnamed_addr constant %struct.nvkm_disp_oclass { ptr @gp100_disp_root_new, %struct.nvkm_sclass { i32 -1, i32 -1, i32 38768, ptr null, ptr null } }, align 4
@gp100_disp_root = internal constant { i32, [6 x %struct.nv50_disp_user] } { i32 0, [6 x %struct.nv50_disp_user] [%struct.nv50_disp_user { %struct.nvkm_sclass { i32 0, i32 0, i32 37242, ptr null, ptr null }, ptr @gf119_disp_curs_new }, %struct.nv50_disp_user { %struct.nvkm_sclass { i32 0, i32 0, i32 37243, ptr null, ptr null }, ptr @gf119_disp_oimm_new }, %struct.nv50_disp_user { %struct.nvkm_sclass { i32 0, i32 0, i32 37500, ptr null, ptr null }, ptr @gf119_disp_base_new }, %struct.nv50_disp_user { %struct.nvkm_sclass { i32 0, i32 0, i32 38781, ptr null, ptr null }, ptr @gk104_disp_core_new }, %struct.nv50_disp_user { %struct.nvkm_sclass { i32 0, i32 0, i32 37246, ptr null, ptr null }, ptr @gk104_disp_ovly_new }, %struct.nv50_disp_user zeroinitializer] }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gp100_disp_root_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = tail call i32 @nv50_disp_root_new_(ptr noundef nonnull @gp100_disp_root, ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #2
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_root_new_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf119_disp_curs_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf119_disp_oimm_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf119_disp_base_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_disp_core_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_disp_ovly_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

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
