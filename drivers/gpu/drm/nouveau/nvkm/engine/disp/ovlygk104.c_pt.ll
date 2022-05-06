; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/disp/ovlygk104.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/ovlygk104.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.0 = type { ptr, i32, ptr }
%struct.nv50_disp_chan_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { i32, i32, ptr }

@.str = private unnamed_addr constant [8 x i8] c"Overlay\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Global\00", align 1
@gk104_disp_ovly_mthd = dso_local constant { ptr, i32, i32, [2 x %struct.anon.0] } { ptr @.str, i32 4096, i32 -131072, [2 x %struct.anon.0] [%struct.anon.0 { ptr @.str.1, i32 1, ptr @gk104_disp_ovly_mthd_base }, %struct.anon.0 zeroinitializer] }, align 4
@gf119_disp_dmac_func = external dso_local constant %struct.nv50_disp_chan_func, align 4
@gk104_disp_ovly_mthd_base = internal constant { i32, i32, [47 x %struct.anon] } { i32 0, i32 0, [47 x %struct.anon] [%struct.anon { i32 128, i32 6705280, ptr null }, %struct.anon { i32 132, i32 6705284, ptr null }, %struct.anon { i32 136, i32 6705288, ptr null }, %struct.anon { i32 140, i32 6705292, ptr null }, %struct.anon { i32 144, i32 6705296, ptr null }, %struct.anon { i32 148, i32 6705300, ptr null }, %struct.anon { i32 160, i32 6705312, ptr null }, %struct.anon { i32 164, i32 6705316, ptr null }, %struct.anon { i32 176, i32 6705328, ptr null }, %struct.anon { i32 180, i32 6705332, ptr null }, %struct.anon { i32 184, i32 6705336, ptr null }, %struct.anon { i32 192, i32 6705344, ptr null }, %struct.anon { i32 196, i32 6705348, ptr null }, %struct.anon { i32 224, i32 6705376, ptr null }, %struct.anon { i32 228, i32 6705380, ptr null }, %struct.anon { i32 232, i32 6705384, ptr null }, %struct.anon { i32 256, i32 6705408, ptr null }, %struct.anon { i32 260, i32 6705412, ptr null }, %struct.anon { i32 264, i32 6705416, ptr null }, %struct.anon { i32 268, i32 6705420, ptr null }, %struct.anon { i32 272, i32 6705424, ptr null }, %struct.anon { i32 280, i32 6705432, ptr null }, %struct.anon { i32 284, i32 6705436, ptr null }, %struct.anon { i32 288, i32 6705440, ptr null }, %struct.anon { i32 292, i32 6705444, ptr null }, %struct.anon { i32 304, i32 6705456, ptr null }, %struct.anon { i32 308, i32 6705460, ptr null }, %struct.anon { i32 312, i32 6705464, ptr null }, %struct.anon { i32 316, i32 6705468, ptr null }, %struct.anon { i32 320, i32 6705472, ptr null }, %struct.anon { i32 324, i32 6705476, ptr null }, %struct.anon { i32 328, i32 6705480, ptr null }, %struct.anon { i32 332, i32 6705484, ptr null }, %struct.anon { i32 336, i32 6705488, ptr null }, %struct.anon { i32 340, i32 6705492, ptr null }, %struct.anon { i32 344, i32 6705496, ptr null }, %struct.anon { i32 348, i32 6705500, ptr null }, %struct.anon { i32 352, i32 6705504, ptr null }, %struct.anon { i32 356, i32 6705508, ptr null }, %struct.anon { i32 360, i32 6705512, ptr null }, %struct.anon { i32 364, i32 6705516, ptr null }, %struct.anon { i32 1024, i32 6706176, ptr null }, %struct.anon { i32 1028, i32 6706180, ptr null }, %struct.anon { i32 1032, i32 6706184, ptr null }, %struct.anon { i32 1036, i32 6706188, ptr null }, %struct.anon { i32 1040, i32 6706192, ptr null }, %struct.anon zeroinitializer] }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk104_disp_ovly_new(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @nv50_disp_ovly_new_(ptr noundef nonnull @gf119_disp_dmac_func, ptr noundef nonnull @gk104_disp_ovly_mthd, ptr noundef %3, i32 noundef 5, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #2
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_ovly_new_(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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
