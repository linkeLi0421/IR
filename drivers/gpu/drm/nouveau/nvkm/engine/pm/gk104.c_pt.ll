; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/pm/gk104.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/pm/gk104.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gf100_pm_func = type { ptr, ptr, ptr }
%struct.nvkm_specdom = type { i16, ptr, ptr }
%struct.nvkm_specsig = type { i8, ptr, ptr }
%struct.nvkm_funcdom = type { ptr, ptr, ptr }
%struct.nvkm_specsrc = type { i32, ptr, ptr }
%struct.nvkm_specmux = type { i32, i8, ptr, i8 }

@gk104_pm = internal constant %struct.gf100_pm_func { ptr @gk104_pm_hub, ptr @gk104_pm_gpc, ptr @gk104_pm_part }, align 4
@gk104_pm_hub = internal constant [9 x %struct.nvkm_specdom] [%struct.nvkm_specdom { i16 96, ptr @.compoundliteral, ptr @gf100_perfctr_func }, %struct.nvkm_specdom { i16 64, ptr @.compoundliteral.2, ptr @gf100_perfctr_func }, %struct.nvkm_specdom { i16 96, ptr @.compoundliteral.4, ptr @gf100_perfctr_func }, %struct.nvkm_specdom { i16 96, ptr @.compoundliteral.6, ptr @gf100_perfctr_func }, %struct.nvkm_specdom { i16 64, ptr @.compoundliteral.9, ptr @gf100_perfctr_func }, %struct.nvkm_specdom { i16 96, ptr @.compoundliteral.11, ptr @gf100_perfctr_func }, %struct.nvkm_specdom { i16 192, ptr @.compoundliteral.15, ptr @gf100_perfctr_func }, %struct.nvkm_specdom { i16 96, ptr @.compoundliteral.17, ptr @gf100_perfctr_func }, %struct.nvkm_specdom zeroinitializer], align 4
@gk104_pm_gpc = internal constant [4 x %struct.nvkm_specdom] [%struct.nvkm_specdom { i16 224, ptr @.compoundliteral.19, ptr @gf100_perfctr_func }, %struct.nvkm_specdom { i16 32, ptr @.compoundliteral.20, ptr @gf100_perfctr_func }, %struct.nvkm_specdom { i16 32, ptr @.compoundliteral.39, ptr @gf100_perfctr_func }, %struct.nvkm_specdom zeroinitializer], align 4
@gk104_pm_part = internal constant [3 x %struct.nvkm_specdom] [%struct.nvkm_specdom { i16 96, ptr @.compoundliteral.65, ptr @gf100_perfctr_func }, %struct.nvkm_specdom { i16 96, ptr @.compoundliteral.67, ptr @gf100_perfctr_func }, %struct.nvkm_specdom zeroinitializer], align 4
@.str = private unnamed_addr constant [13 x i8] c"hub00_user_0\00", align 1
@.compoundliteral = internal constant [2 x %struct.nvkm_specsig] [%struct.nvkm_specsig { i8 71, ptr @.str, ptr null }, %struct.nvkm_specsig zeroinitializer], align 4
@gf100_perfctr_func = external dso_local constant %struct.nvkm_funcdom, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"hub01_user_0\00", align 1
@.compoundliteral.2 = internal constant [2 x %struct.nvkm_specsig] [%struct.nvkm_specsig { i8 39, ptr @.str.1, ptr null }, %struct.nvkm_specsig zeroinitializer], align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"hub02_user_0\00", align 1
@.compoundliteral.4 = internal constant [2 x %struct.nvkm_specsig] [%struct.nvkm_specsig { i8 71, ptr @.str.3, ptr null }, %struct.nvkm_specsig zeroinitializer], align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"hub03_user_0\00", align 1
@.compoundliteral.6 = internal constant [2 x %struct.nvkm_specsig] [%struct.nvkm_specsig { i8 71, ptr @.str.5, ptr null }, %struct.nvkm_specsig zeroinitializer], align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"host_mmio_rd\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"hub04_user_0\00", align 1
@.compoundliteral.9 = internal constant [3 x %struct.nvkm_specsig] [%struct.nvkm_specsig { i8 3, ptr @.str.7, ptr null }, %struct.nvkm_specsig { i8 39, ptr @.str.8, ptr null }, %struct.nvkm_specsig zeroinitializer], align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"hub05_user_0\00", align 1
@.compoundliteral.11 = internal constant [2 x %struct.nvkm_specsig] [%struct.nvkm_specsig { i8 71, ptr @.str.10, ptr null }, %struct.nvkm_specsig zeroinitializer], align 4
@.str.12 = private unnamed_addr constant [13 x i8] c"host_fb_rd3x\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"host_fb_rd3x_2\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"hub06_user_0\00", align 1
@.compoundliteral.15 = internal constant [4 x %struct.nvkm_specsig] [%struct.nvkm_specsig { i8 116, ptr @.str.12, ptr null }, %struct.nvkm_specsig { i8 117, ptr @.str.13, ptr null }, %struct.nvkm_specsig { i8 -89, ptr @.str.14, ptr null }, %struct.nvkm_specsig zeroinitializer], align 4
@.str.16 = private unnamed_addr constant [13 x i8] c"hub07_user_0\00", align 1
@.compoundliteral.17 = internal constant [2 x %struct.nvkm_specsig] [%struct.nvkm_specsig { i8 71, ptr @.str.16, ptr null }, %struct.nvkm_specsig zeroinitializer], align 4
@.str.18 = private unnamed_addr constant [13 x i8] c"gpc00_user_0\00", align 1
@.compoundliteral.19 = internal constant [2 x %struct.nvkm_specsig] [%struct.nvkm_specsig { i8 -57, ptr @.str.18, ptr null }, %struct.nvkm_specsig zeroinitializer], align 4
@.compoundliteral.20 = internal constant [1 x %struct.nvkm_specsig] zeroinitializer, align 4
@.str.21 = private unnamed_addr constant [13 x i8] c"gpc02_tex_00\00", align 1
@gk104_tex_sources = internal constant [4 x %struct.nvkm_specsrc] [%struct.nvkm_specsrc { i32 5259968, ptr @.compoundliteral.42, ptr @.str.43 }, %struct.nvkm_specsrc { i32 5259976, ptr @.compoundliteral.45, ptr @.str.46 }, %struct.nvkm_specsrc { i32 5259960, ptr @.compoundliteral.47, ptr @.str.48 }, %struct.nvkm_specsrc zeroinitializer], align 4
@.str.22 = private unnamed_addr constant [13 x i8] c"gpc02_tex_01\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"gpc02_tex_02\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"gpc02_tex_03\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"gpc02_tex_04\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"gpc02_tex_05\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"gpc02_tex_06\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"gpc02_tex_07\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"gpc02_tex_08\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"gpc02_tex_0a\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"gpc02_tex_0b\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"gpc02_tex_0c\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"gpc02_tex_0d\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"gpc02_tex_0e\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"gpc02_tex_0f\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"gpc02_tex_10\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"gpc02_tex_11\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"gpc02_tex_12\00", align 1
@.compoundliteral.39 = internal constant [19 x %struct.nvkm_specsig] [%struct.nvkm_specsig { i8 0, ptr @.str.21, ptr @gk104_tex_sources }, %struct.nvkm_specsig { i8 1, ptr @.str.22, ptr @gk104_tex_sources }, %struct.nvkm_specsig { i8 2, ptr @.str.23, ptr @gk104_tex_sources }, %struct.nvkm_specsig { i8 3, ptr @.str.24, ptr @gk104_tex_sources }, %struct.nvkm_specsig { i8 4, ptr @.str.25, ptr @gk104_tex_sources }, %struct.nvkm_specsig { i8 5, ptr @.str.26, ptr @gk104_tex_sources }, %struct.nvkm_specsig { i8 6, ptr @.str.27, ptr @gk104_tex_sources }, %struct.nvkm_specsig { i8 7, ptr @.str.28, ptr @gk104_tex_sources }, %struct.nvkm_specsig { i8 8, ptr @.str.29, ptr @gk104_tex_sources }, %struct.nvkm_specsig { i8 10, ptr @.str.30, ptr @gk104_tex_sources }, %struct.nvkm_specsig { i8 11, ptr @.str.31, ptr @gk104_tex_sources }, %struct.nvkm_specsig { i8 13, ptr @.str.32, ptr @gk104_tex_sources }, %struct.nvkm_specsig { i8 12, ptr @.str.33, ptr @gk104_tex_sources }, %struct.nvkm_specsig { i8 14, ptr @.str.34, ptr @gk104_tex_sources }, %struct.nvkm_specsig { i8 15, ptr @.str.35, ptr @gk104_tex_sources }, %struct.nvkm_specsig { i8 16, ptr @.str.36, ptr @gk104_tex_sources }, %struct.nvkm_specsig { i8 17, ptr @.str.37, ptr @gk104_tex_sources }, %struct.nvkm_specsig { i8 18, ptr @.str.38, ptr @gk104_tex_sources }, %struct.nvkm_specsig zeroinitializer], align 4
@.str.40 = private unnamed_addr constant [5 x i8] c"sel0\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"sel1\00", align 1
@.compoundliteral.42 = internal constant [3 x %struct.nvkm_specmux] [%struct.nvkm_specmux { i32 15, i8 0, ptr @.str.40, i8 1 }, %struct.nvkm_specmux { i32 7, i8 8, ptr @.str.41, i8 1 }, %struct.nvkm_specmux zeroinitializer], align 4
@.str.43 = private unnamed_addr constant [32 x i8] c"pgraph_gpc0_tpc0_tex_pm_mux_c_d\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"sel\00", align 1
@.compoundliteral.45 = internal constant [2 x %struct.nvkm_specmux] [%struct.nvkm_specmux { i32 31, i8 0, ptr @.str.44, i8 1 }, %struct.nvkm_specmux zeroinitializer], align 4
@.str.46 = private unnamed_addr constant [30 x i8] c"pgraph_gpc0_tpc0_tex_pm_unkc8\00", align 1
@.compoundliteral.47 = internal constant [2 x %struct.nvkm_specmux] [%struct.nvkm_specmux { i32 255, i8 0, ptr @.str.44, i8 1 }, %struct.nvkm_specmux zeroinitializer], align 4
@.str.48 = private unnamed_addr constant [30 x i8] c"pgraph_gpc0_tpc0_tex_pm_unkb8\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"part00_pbfb_00\00", align 1
@gf100_pbfb_sources = external dso_local constant [0 x %struct.nvkm_specsrc], align 4
@.str.50 = private unnamed_addr constant [15 x i8] c"part00_pbfb_01\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"part00_pmfb_00\00", align 1
@gk104_pmfb_sources = internal constant [6 x %struct.nvkm_specsrc] [%struct.nvkm_specsrc { i32 1310760, ptr @.compoundliteral.72, ptr @.str.73 }, %struct.nvkm_specsrc { i32 1315420, ptr @.compoundliteral.74, ptr @.str.75 }, %struct.nvkm_specsrc { i32 1316444, ptr @.compoundliteral.76, ptr @.str.77 }, %struct.nvkm_specsrc { i32 1317468, ptr @.compoundliteral.78, ptr @.str.79 }, %struct.nvkm_specsrc { i32 1318492, ptr @.compoundliteral.80, ptr @.str.81 }, %struct.nvkm_specsrc zeroinitializer], align 4
@.str.52 = private unnamed_addr constant [15 x i8] c"part00_pmfb_01\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"part00_pmfb_02\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"part00_pmfb_03\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"part00_pmfb_04\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"part00_pmfb_05\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"part00_pmfb_06\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"part00_pmfb_07\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"part00_pmfb_08\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"part00_pmfb_09\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"part00_pmfb_0a\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"part00_pmfb_0b\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"part00_pmfb_0c\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"part00_user_0\00", align 1
@.compoundliteral.65 = internal constant [17 x %struct.nvkm_specsig] [%struct.nvkm_specsig { i8 0, ptr @.str.49, ptr @gf100_pbfb_sources }, %struct.nvkm_specsig { i8 1, ptr @.str.50, ptr @gf100_pbfb_sources }, %struct.nvkm_specsig { i8 12, ptr @.str.51, ptr @gk104_pmfb_sources }, %struct.nvkm_specsig { i8 13, ptr @.str.52, ptr @gk104_pmfb_sources }, %struct.nvkm_specsig { i8 14, ptr @.str.53, ptr @gk104_pmfb_sources }, %struct.nvkm_specsig { i8 15, ptr @.str.54, ptr @gk104_pmfb_sources }, %struct.nvkm_specsig { i8 16, ptr @.str.55, ptr @gk104_pmfb_sources }, %struct.nvkm_specsig { i8 18, ptr @.str.56, ptr @gk104_pmfb_sources }, %struct.nvkm_specsig { i8 21, ptr @.str.57, ptr @gk104_pmfb_sources }, %struct.nvkm_specsig { i8 22, ptr @.str.58, ptr @gk104_pmfb_sources }, %struct.nvkm_specsig { i8 24, ptr @.str.59, ptr @gk104_pmfb_sources }, %struct.nvkm_specsig { i8 33, ptr @.str.60, ptr @gk104_pmfb_sources }, %struct.nvkm_specsig { i8 37, ptr @.str.61, ptr @gk104_pmfb_sources }, %struct.nvkm_specsig { i8 38, ptr @.str.62, ptr @gk104_pmfb_sources }, %struct.nvkm_specsig { i8 39, ptr @.str.63, ptr @gk104_pmfb_sources }, %struct.nvkm_specsig { i8 71, ptr @.str.64, ptr null }, %struct.nvkm_specsig zeroinitializer], align 4
@.str.66 = private unnamed_addr constant [14 x i8] c"part01_user_0\00", align 1
@.compoundliteral.67 = internal constant [2 x %struct.nvkm_specsig] [%struct.nvkm_specsig { i8 71, ptr @.str.66, ptr null }, %struct.nvkm_specsig zeroinitializer], align 4
@.str.68 = private unnamed_addr constant [5 x i8] c"unk0\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"unk16\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"unk24\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"unk28\00", align 1
@.compoundliteral.72 = internal constant [5 x %struct.nvkm_specmux] [%struct.nvkm_specmux { i32 16383, i8 0, ptr @.str.68, i8 0 }, %struct.nvkm_specmux { i32 7, i8 16, ptr @.str.69, i8 0 }, %struct.nvkm_specmux { i32 3, i8 24, ptr @.str.70, i8 0 }, %struct.nvkm_specmux { i32 2, i8 28, ptr @.str.71, i8 0 }, %struct.nvkm_specmux zeroinitializer], align 4
@.str.73 = private unnamed_addr constant [15 x i8] c"pmfb0_pm_unk28\00", align 1
@.compoundliteral.74 = internal constant [2 x %struct.nvkm_specmux] [%struct.nvkm_specmux { i32 16383, i8 0, ptr @.str.68, i8 0 }, %struct.nvkm_specmux zeroinitializer], align 4
@.str.75 = private unnamed_addr constant [22 x i8] c"pmfb0_subp0_pm_unk25c\00", align 1
@.compoundliteral.76 = internal constant [2 x %struct.nvkm_specmux] [%struct.nvkm_specmux { i32 16383, i8 0, ptr @.str.68, i8 0 }, %struct.nvkm_specmux zeroinitializer], align 4
@.str.77 = private unnamed_addr constant [22 x i8] c"pmfb0_subp1_pm_unk25c\00", align 1
@.compoundliteral.78 = internal constant [2 x %struct.nvkm_specmux] [%struct.nvkm_specmux { i32 16383, i8 0, ptr @.str.68, i8 0 }, %struct.nvkm_specmux zeroinitializer], align 4
@.str.79 = private unnamed_addr constant [22 x i8] c"pmfb0_subp2_pm_unk25c\00", align 1
@.compoundliteral.80 = internal constant [2 x %struct.nvkm_specmux] [%struct.nvkm_specmux { i32 16383, i8 0, ptr @.str.68, i8 0 }, %struct.nvkm_specmux zeroinitializer], align 4
@.str.81 = private unnamed_addr constant [22 x i8] c"pmfb0_subp3_pm_unk25c\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk104_pm_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @gf100_pm_new_(ptr noundef nonnull @gk104_pm, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #2
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
