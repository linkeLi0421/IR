; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/pm/gf108.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/pm/gf108.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gf100_pm_func = type { ptr, ptr, ptr }
%struct.nvkm_specdom = type { i16, ptr, ptr }
%struct.nvkm_specsrc = type { i32, ptr, ptr }
%struct.nvkm_specsig = type { i8, ptr, ptr }
%struct.nvkm_funcdom = type { ptr, ptr, ptr }

@gf108_pm = internal constant %struct.gf100_pm_func { ptr @gf108_pm_hub, ptr @gf100_pm_gpc, ptr @gf108_pm_part }, align 4
@gf108_pm_hub = internal constant [1 x %struct.nvkm_specdom] zeroinitializer, align 4
@gf100_pm_gpc = external dso_local constant [0 x %struct.nvkm_specdom], align 4
@gf108_pm_part = internal constant [2 x %struct.nvkm_specdom] [%struct.nvkm_specdom { i16 224, ptr @.compoundliteral, ptr @gf100_perfctr_func }, %struct.nvkm_specdom zeroinitializer], align 4
@.str = private unnamed_addr constant [15 x i8] c"part00_pbfb_00\00", align 1
@gf100_pbfb_sources = external dso_local constant [0 x %struct.nvkm_specsrc], align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"part00_pbfb_01\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"part00_pbfb_02\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"part00_pbfb_03\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"part00_pmfb_00\00", align 1
@gf100_pmfb_sources = external dso_local constant [0 x %struct.nvkm_specsrc], align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"part00_pmfb_01\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"part00_pmfb_02\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"part00_pmfb_03\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"part00_pmfb_04\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"part00_pmfb_05\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"part00_pmfb_06\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"part00_pmfb_07\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"part00_pmfb_08\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"part00_pmfb_09\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"part00_pmfb_0a\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"part00_pmfb_0b\00", align 1
@.compoundliteral = internal constant [17 x %struct.nvkm_specsig] [%struct.nvkm_specsig { i8 20, ptr @.str, ptr @gf100_pbfb_sources }, %struct.nvkm_specsig { i8 21, ptr @.str.1, ptr @gf100_pbfb_sources }, %struct.nvkm_specsig { i8 32, ptr @.str.2, ptr @gf100_pbfb_sources }, %struct.nvkm_specsig { i8 33, ptr @.str.3, ptr @gf100_pbfb_sources }, %struct.nvkm_specsig { i8 1, ptr @.str.4, ptr @gf100_pmfb_sources }, %struct.nvkm_specsig { i8 4, ptr @.str.5, ptr @gf100_pmfb_sources }, %struct.nvkm_specsig { i8 5, ptr @.str.6, ptr @gf100_pmfb_sources }, %struct.nvkm_specsig { i8 7, ptr @.str.7, ptr @gf100_pmfb_sources }, %struct.nvkm_specsig { i8 13, ptr @.str.8, ptr @gf100_pmfb_sources }, %struct.nvkm_specsig { i8 18, ptr @.str.9, ptr @gf100_pmfb_sources }, %struct.nvkm_specsig { i8 19, ptr @.str.10, ptr @gf100_pmfb_sources }, %struct.nvkm_specsig { i8 44, ptr @.str.11, ptr @gf100_pmfb_sources }, %struct.nvkm_specsig { i8 45, ptr @.str.12, ptr @gf100_pmfb_sources }, %struct.nvkm_specsig { i8 46, ptr @.str.13, ptr @gf100_pmfb_sources }, %struct.nvkm_specsig { i8 47, ptr @.str.14, ptr @gf100_pmfb_sources }, %struct.nvkm_specsig { i8 48, ptr @.str.15, ptr @gf100_pmfb_sources }, %struct.nvkm_specsig zeroinitializer], align 4
@gf100_perfctr_func = external dso_local constant %struct.nvkm_funcdom, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf108_pm_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @gf100_pm_new_(ptr noundef nonnull @gf108_pm, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #2
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
