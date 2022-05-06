; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/disp/basegf119.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/basegf119.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.0 = type { ptr, i32, ptr }
%struct.nv50_disp_chan_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { i32, i32, ptr }

@.str = private unnamed_addr constant [5 x i8] c"Base\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Global\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@gf119_disp_base_mthd = dso_local constant { ptr, i32, i32, [3 x %struct.anon.0] } { ptr @.str, i32 4096, i32 -131072, [3 x %struct.anon.0] [%struct.anon.0 { ptr @.str.1, i32 1, ptr @gf119_disp_base_mthd_base }, %struct.anon.0 { ptr @.str.2, i32 2, ptr @gf119_disp_base_mthd_image }, %struct.anon.0 zeroinitializer] }, align 4
@gf119_disp_dmac_func = external dso_local constant %struct.nv50_disp_chan_func, align 4
@gf119_disp_base_mthd_base = internal constant { i32, i32, [42 x %struct.anon] } { i32 0, i32 0, [42 x %struct.anon] [%struct.anon { i32 128, i32 6688896, ptr null }, %struct.anon { i32 132, i32 6688900, ptr null }, %struct.anon { i32 136, i32 6688904, ptr null }, %struct.anon { i32 140, i32 6688908, ptr null }, %struct.anon { i32 144, i32 6688912, ptr null }, %struct.anon { i32 148, i32 6688916, ptr null }, %struct.anon { i32 160, i32 6688928, ptr null }, %struct.anon { i32 164, i32 6688932, ptr null }, %struct.anon { i32 192, i32 6688960, ptr null }, %struct.anon { i32 196, i32 6688964, ptr null }, %struct.anon { i32 200, i32 6688968, ptr null }, %struct.anon { i32 204, i32 6688972, ptr null }, %struct.anon { i32 224, i32 6688992, ptr null }, %struct.anon { i32 228, i32 6688996, ptr null }, %struct.anon { i32 232, i32 6689000, ptr null }, %struct.anon { i32 236, i32 6689004, ptr null }, %struct.anon { i32 252, i32 6689020, ptr null }, %struct.anon { i32 256, i32 6689024, ptr null }, %struct.anon { i32 260, i32 6689028, ptr null }, %struct.anon { i32 264, i32 6689032, ptr null }, %struct.anon { i32 268, i32 6689036, ptr null }, %struct.anon { i32 272, i32 6689040, ptr null }, %struct.anon { i32 276, i32 6689044, ptr null }, %struct.anon { i32 280, i32 6689048, ptr null }, %struct.anon { i32 284, i32 6689052, ptr null }, %struct.anon { i32 304, i32 6689072, ptr null }, %struct.anon { i32 308, i32 6689076, ptr null }, %struct.anon { i32 312, i32 6689080, ptr null }, %struct.anon { i32 316, i32 6689084, ptr null }, %struct.anon { i32 320, i32 6689088, ptr null }, %struct.anon { i32 324, i32 6689092, ptr null }, %struct.anon { i32 328, i32 6689096, ptr null }, %struct.anon { i32 332, i32 6689100, ptr null }, %struct.anon { i32 336, i32 6689104, ptr null }, %struct.anon { i32 340, i32 6689108, ptr null }, %struct.anon { i32 344, i32 6689112, ptr null }, %struct.anon { i32 348, i32 6689116, ptr null }, %struct.anon { i32 352, i32 6689120, ptr null }, %struct.anon { i32 356, i32 6689124, ptr null }, %struct.anon { i32 360, i32 6689128, ptr null }, %struct.anon { i32 364, i32 6689132, ptr null }, %struct.anon zeroinitializer] }, align 4
@gf119_disp_base_mthd_image = internal constant { i32, i32, [6 x %struct.anon] } { i32 32, i32 32, [6 x %struct.anon] [%struct.anon { i32 1024, i32 6689792, ptr null }, %struct.anon { i32 1028, i32 6689796, ptr null }, %struct.anon { i32 1032, i32 6689800, ptr null }, %struct.anon { i32 1036, i32 6689804, ptr null }, %struct.anon { i32 1040, i32 6689808, ptr null }, %struct.anon zeroinitializer] }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf119_disp_base_new(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @nv50_disp_base_new_(ptr noundef nonnull @gf119_disp_dmac_func, ptr noundef nonnull @gf119_disp_base_mthd, ptr noundef %3, i32 noundef 1, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #2
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_base_new_(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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
