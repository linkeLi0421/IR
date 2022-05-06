; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/disp/ovlygt200.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/ovlygt200.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_disp_chan_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.135 = type { ptr, i32, ptr }
%struct.anon.136 = type { i32, i32, ptr }

@nv50_disp_dmac_func = external dso_local constant %struct.nv50_disp_chan_func, align 4
@.str = private unnamed_addr constant [8 x i8] c"Overlay\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Global\00", align 1
@gt200_disp_ovly_mthd = internal constant { ptr, i32, i32, [2 x %struct.anon.135] } { ptr @.str, i32 1344, i32 4, [2 x %struct.anon.135] [%struct.anon.135 { ptr @.str.1, i32 1, ptr @gt200_disp_ovly_mthd_base }, %struct.anon.135 zeroinitializer] }, align 4
@gt200_disp_ovly_mthd_base = internal constant { i32, i32, [23 x %struct.anon.136] } { i32 0, i32 0, [23 x %struct.anon.136] [%struct.anon.136 { i32 128, i32 0, ptr null }, %struct.anon.136 { i32 132, i32 6359456, ptr null }, %struct.anon.136 { i32 136, i32 6359488, ptr null }, %struct.anon.136 { i32 140, i32 6359496, ptr null }, %struct.anon.136 { i32 144, i32 6359476, ptr null }, %struct.anon.136 { i32 148, i32 6359408, ptr null }, %struct.anon.136 { i32 160, i32 6359448, ptr null }, %struct.anon.136 { i32 164, i32 6359396, ptr null }, %struct.anon.136 { i32 176, i32 6360216, ptr null }, %struct.anon.136 { i32 180, i32 6360228, ptr null }, %struct.anon.136 { i32 184, i32 6360236, ptr null }, %struct.anon.136 { i32 192, i32 6359384, ptr null }, %struct.anon.136 { i32 224, i32 6359464, ptr null }, %struct.anon.136 { i32 228, i32 6359504, ptr null }, %struct.anon.136 { i32 232, i32 6359512, ptr null }, %struct.anon.136 { i32 256, i32 6359372, ptr null }, %struct.anon.136 { i32 260, i32 6359428, ptr null }, %struct.anon.136 { i32 264, i32 6359436, ptr null }, %struct.anon.136 { i32 2048, i32 6359544, ptr null }, %struct.anon.136 { i32 2056, i32 6359560, ptr null }, %struct.anon.136 { i32 2060, i32 6359568, ptr null }, %struct.anon.136 { i32 2064, i32 6359552, ptr null }, %struct.anon.136 zeroinitializer] }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gt200_disp_ovly_new(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @nv50_disp_ovly_new_(ptr noundef nonnull @nv50_disp_dmac_func, ptr noundef nonnull @gt200_disp_ovly_mthd, ptr noundef %3, i32 noundef 3, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #2
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
