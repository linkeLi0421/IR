; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/disp/coreg84.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/coreg84.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon = type { i32, i32, ptr }
%struct.nv50_disp_mthd_list = type { i32, i32, [0 x %struct.anon] }
%struct.anon.0 = type { ptr, i32, ptr }
%struct.nv50_disp_chan_func = type { ptr, ptr, ptr, ptr, ptr }

@g84_disp_core_mthd_dac = dso_local constant { i32, i32, [4 x %struct.anon] } { i32 128, i32 8, [4 x %struct.anon] [%struct.anon { i32 1024, i32 6359896, ptr null }, %struct.anon { i32 1028, i32 6360028, ptr null }, %struct.anon { i32 1056, i32 6360004, ptr null }, %struct.anon zeroinitializer] }, align 4
@g84_disp_core_mthd_head = dso_local constant { i32, i32, [44 x %struct.anon] } { i32 1024, i32 1344, [44 x %struct.anon] [%struct.anon { i32 2048, i32 6359768, ptr null }, %struct.anon { i32 2052, i32 6359760, ptr null }, %struct.anon { i32 2056, i32 6359624, ptr null }, %struct.anon { i32 2060, i32 6359672, ptr null }, %struct.anon { i32 2064, i32 6359744, ptr null }, %struct.anon { i32 2068, i32 6359800, ptr null }, %struct.anon { i32 2072, i32 6359808, ptr null }, %struct.anon { i32 2076, i32 6359784, ptr null }, %struct.anon { i32 2080, i32 6359792, ptr null }, %struct.anon { i32 2084, i32 6359816, ptr null }, %struct.anon { i32 2088, i32 6359824, ptr null }, %struct.anon { i32 2092, i32 6359656, ptr null }, %struct.anon { i32 2096, i32 6359648, ptr null }, %struct.anon { i32 2100, i32 0, ptr null }, %struct.anon { i32 2104, i32 6359616, ptr null }, %struct.anon { i32 2112, i32 6359588, ptr null }, %struct.anon { i32 2116, i32 6359596, ptr null }, %struct.anon { i32 2120, i32 6359720, ptr null }, %struct.anon { i32 2124, i32 6359728, ptr null }, %struct.anon { i32 2140, i32 6360156, ptr null }, %struct.anon { i32 2144, i32 6359684, ptr null }, %struct.anon { i32 2148, i32 6359696, ptr null }, %struct.anon { i32 2152, i32 6359832, ptr null }, %struct.anon { i32 2156, i32 6359840, ptr null }, %struct.anon { i32 2160, i32 6359752, ptr null }, %struct.anon { i32 2164, i32 6359608, ptr null }, %struct.anon { i32 2168, i32 6360144, ptr null }, %struct.anon { i32 2176, i32 6359640, ptr null }, %struct.anon { i32 2180, i32 6359708, ptr null }, %struct.anon { i32 2204, i32 6360168, ptr null }, %struct.anon { i32 2208, i32 6359664, ptr null }, %struct.anon { i32 2212, i32 6359632, ptr null }, %struct.anon { i32 2216, i32 6359776, ptr null }, %struct.anon { i32 2240, i32 6359848, ptr null }, %struct.anon { i32 2244, i32 6359856, ptr null }, %struct.anon { i32 2248, i32 6359872, ptr null }, %struct.anon { i32 2260, i32 6359864, ptr null }, %struct.anon { i32 2264, i32 6359880, ptr null }, %struct.anon { i32 2268, i32 6359888, ptr null }, %struct.anon { i32 2304, i32 6359576, ptr null }, %struct.anon { i32 2308, i32 6359736, ptr null }, %struct.anon { i32 2320, i32 6360176, ptr null }, %struct.anon { i32 2324, i32 6360184, ptr null }, %struct.anon zeroinitializer] }, align 4
@.str = private unnamed_addr constant [5 x i8] c"Core\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Global\00", align 1
@nv50_disp_core_mthd_base = external dso_local constant %struct.nv50_disp_mthd_list, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"DAC\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"SOR\00", align 1
@nv50_disp_core_mthd_sor = external dso_local constant %struct.nv50_disp_mthd_list, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"PIOR\00", align 1
@nv50_disp_core_mthd_pior = external dso_local constant %struct.nv50_disp_mthd_list, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@g84_disp_core_mthd = dso_local constant { ptr, i32, i32, [6 x %struct.anon.0] } { ptr @.str, i32 0, i32 4, [6 x %struct.anon.0] [%struct.anon.0 { ptr @.str.1, i32 1, ptr @nv50_disp_core_mthd_base }, %struct.anon.0 { ptr @.str.2, i32 3, ptr @g84_disp_core_mthd_dac }, %struct.anon.0 { ptr @.str.3, i32 2, ptr @nv50_disp_core_mthd_sor }, %struct.anon.0 { ptr @.str.4, i32 3, ptr @nv50_disp_core_mthd_pior }, %struct.anon.0 { ptr @.str.5, i32 2, ptr @g84_disp_core_mthd_head }, %struct.anon.0 zeroinitializer] }, align 4
@nv50_disp_core_func = external dso_local constant %struct.nv50_disp_chan_func, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @g84_disp_core_new(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @nv50_disp_core_new_(ptr noundef nonnull @nv50_disp_core_func, ptr noundef nonnull @g84_disp_core_mthd, ptr noundef %3, i32 noundef 0, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #2
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
