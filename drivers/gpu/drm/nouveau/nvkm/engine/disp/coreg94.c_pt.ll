; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/disp/coreg94.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/coreg94.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_disp_mthd_list = type { i32, i32, [0 x %struct.anon] }
%struct.anon = type { i32, i32, ptr }
%struct.anon.0 = type { ptr, i32, ptr }
%struct.nv50_disp_chan_func = type { ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"Core\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Global\00", align 1
@nv50_disp_core_mthd_base = external dso_local constant %struct.nv50_disp_mthd_list, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"DAC\00", align 1
@g84_disp_core_mthd_dac = external dso_local constant %struct.nv50_disp_mthd_list, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"SOR\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"PIOR\00", align 1
@nv50_disp_core_mthd_pior = external dso_local constant %struct.nv50_disp_mthd_list, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@g84_disp_core_mthd_head = external dso_local constant %struct.nv50_disp_mthd_list, align 4
@g94_disp_core_mthd = dso_local constant { ptr, i32, i32, [6 x %struct.anon.0] } { ptr @.str, i32 0, i32 4, [6 x %struct.anon.0] [%struct.anon.0 { ptr @.str.1, i32 1, ptr @nv50_disp_core_mthd_base }, %struct.anon.0 { ptr @.str.2, i32 3, ptr @g84_disp_core_mthd_dac }, %struct.anon.0 { ptr @.str.3, i32 4, ptr @g94_disp_core_mthd_sor }, %struct.anon.0 { ptr @.str.4, i32 3, ptr @nv50_disp_core_mthd_pior }, %struct.anon.0 { ptr @.str.5, i32 2, ptr @g84_disp_core_mthd_head }, %struct.anon.0 zeroinitializer] }, align 4
@nv50_disp_core_func = external dso_local constant %struct.nv50_disp_chan_func, align 4
@g94_disp_core_mthd_sor = internal constant { i32, i32, [2 x %struct.anon] } { i32 64, i32 8, [2 x %struct.anon] [%struct.anon { i32 1536, i32 6358932, ptr null }, %struct.anon zeroinitializer] }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @g94_disp_core_new(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @nv50_disp_core_new_(ptr noundef nonnull @nv50_disp_core_func, ptr noundef nonnull @g94_disp_core_mthd, ptr noundef %3, i32 noundef 0, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #2
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_core_new_(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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
