; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/pm/gf117.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/pm/gf117.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gf100_pm_func = type { ptr, ptr, ptr }
%struct.nvkm_specdom = type { i16, ptr, ptr }
%struct.nvkm_specsrc = type { i32, ptr, ptr }
%struct.nvkm_specsig = type { i8, ptr, ptr }
%struct.nvkm_funcdom = type { ptr, ptr, ptr }
%struct.nvkm_specmux = type { i32, i8, ptr, i8 }

@gf117_pm = internal constant %struct.gf100_pm_func { ptr @gf117_pm_hub, ptr @gf100_pm_gpc, ptr @gf117_pm_part }, align 4
@gf117_pm_hub = internal constant [1 x %struct.nvkm_specdom] zeroinitializer, align 4
@gf100_pm_gpc = external dso_local constant [0 x %struct.nvkm_specdom], align 4
@gf117_pm_part = internal constant [2 x %struct.nvkm_specdom] [%struct.nvkm_specdom { i16 224, ptr @.compoundliteral, ptr @gf100_perfctr_func }, %struct.nvkm_specdom zeroinitializer], align 4
@.str = private unnamed_addr constant [15 x i8] c"part00_pbfb_00\00", align 1
@gf100_pbfb_sources = external dso_local constant [0 x %struct.nvkm_specsrc], align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"part00_pbfb_01\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"part00_pmfb_00\00", align 1
@gf117_pmfb_sources = internal constant [3 x %struct.nvkm_specsrc] [%struct.nvkm_specsrc { i32 1310760, ptr @.compoundliteral.18, ptr @.str.19 }, %struct.nvkm_specsrc { i32 1315420, ptr @.compoundliteral.20, ptr @.str.21 }, %struct.nvkm_specsrc zeroinitializer], align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"part00_pmfb_01\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"part00_pmfb_02\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"part00_pmfb_03\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"part00_pmfb_04\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"part00_pmfb_05\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"part00_pmfb_06\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"part00_pmfb_07\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"part00_pmfb_08\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"part00_pmfb_09\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"part00_pmfb_0a\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"part00_pmfb_0b\00", align 1
@.compoundliteral = internal constant [15 x %struct.nvkm_specsig] [%struct.nvkm_specsig { i8 0, ptr @.str, ptr @gf100_pbfb_sources }, %struct.nvkm_specsig { i8 1, ptr @.str.1, ptr @gf100_pbfb_sources }, %struct.nvkm_specsig { i8 18, ptr @.str.2, ptr @gf117_pmfb_sources }, %struct.nvkm_specsig { i8 21, ptr @.str.3, ptr @gf117_pmfb_sources }, %struct.nvkm_specsig { i8 22, ptr @.str.4, ptr @gf117_pmfb_sources }, %struct.nvkm_specsig { i8 24, ptr @.str.5, ptr @gf117_pmfb_sources }, %struct.nvkm_specsig { i8 30, ptr @.str.6, ptr @gf117_pmfb_sources }, %struct.nvkm_specsig { i8 35, ptr @.str.7, ptr @gf117_pmfb_sources }, %struct.nvkm_specsig { i8 36, ptr @.str.8, ptr @gf117_pmfb_sources }, %struct.nvkm_specsig { i8 12, ptr @.str.9, ptr @gf117_pmfb_sources }, %struct.nvkm_specsig { i8 13, ptr @.str.10, ptr @gf117_pmfb_sources }, %struct.nvkm_specsig { i8 14, ptr @.str.11, ptr @gf117_pmfb_sources }, %struct.nvkm_specsig { i8 15, ptr @.str.12, ptr @gf117_pmfb_sources }, %struct.nvkm_specsig { i8 16, ptr @.str.13, ptr @gf117_pmfb_sources }, %struct.nvkm_specsig zeroinitializer], align 4
@gf100_perfctr_func = external dso_local constant %struct.nvkm_funcdom, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"unk0\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"unk16\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"unk24\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"unk28\00", align 1
@.compoundliteral.18 = internal constant [5 x %struct.nvkm_specmux] [%struct.nvkm_specmux { i32 16383, i8 0, ptr @.str.14, i8 0 }, %struct.nvkm_specmux { i32 7, i8 16, ptr @.str.15, i8 0 }, %struct.nvkm_specmux { i32 3, i8 24, ptr @.str.16, i8 0 }, %struct.nvkm_specmux { i32 2, i8 28, ptr @.str.17, i8 0 }, %struct.nvkm_specmux zeroinitializer], align 4
@.str.19 = private unnamed_addr constant [15 x i8] c"pmfb0_pm_unk28\00", align 1
@.compoundliteral.20 = internal constant [2 x %struct.nvkm_specmux] [%struct.nvkm_specmux { i32 16383, i8 0, ptr @.str.14, i8 0 }, %struct.nvkm_specmux zeroinitializer], align 4
@.str.21 = private unnamed_addr constant [22 x i8] c"pmfb0_subp0_pm_unk25c\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf117_pm_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @gf100_pm_new_(ptr noundef nonnull @gf117_pm, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #2
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_pm_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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
