; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/pm/nv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/pm/nv50.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_specmux = type { i32, i8, ptr, i8 }
%struct.nvkm_specsrc = type { i32, ptr, ptr }
%struct.nvkm_specdom = type { i16, ptr, ptr }
%struct.nvkm_specsig = type { i8, ptr, ptr }
%struct.nvkm_funcdom = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"unk0\00", align 1
@.compoundliteral = internal constant [2 x %struct.nvkm_specmux] [%struct.nvkm_specmux { i32 32767, i8 0, ptr @.str, i8 0 }, %struct.nvkm_specmux zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"pgraph_zcull_pm_unka4\00", align 1
@nv50_zcull_sources = dso_local constant [2 x %struct.nvkm_specsrc] [%struct.nvkm_specsrc { i32 4205732, ptr @.compoundliteral, ptr @.str.1 }, %struct.nvkm_specsrc zeroinitializer], align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"sel0\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"sel1\00", align 1
@.compoundliteral.4 = internal constant [3 x %struct.nvkm_specmux] [%struct.nvkm_specmux { i32 15, i8 0, ptr @.str.2, i8 1 }, %struct.nvkm_specmux { i32 15, i8 16, ptr @.str.3, i8 1 }, %struct.nvkm_specmux zeroinitializer], align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"pgraph_rop0_zrop_pm_mux\00", align 1
@nv50_zrop_sources = dso_local constant [2 x %struct.nvkm_specsrc] [%struct.nvkm_specsrc { i32 4223116, ptr @.compoundliteral.4, ptr @.str.5 }, %struct.nvkm_specsrc zeroinitializer], align 4
@nv50_pm = internal constant [6 x %struct.nvkm_specdom] [%struct.nvkm_specdom { i16 32, ptr @.compoundliteral.6, ptr @nv40_perfctr_func }, %struct.nvkm_specdom { i16 240, ptr @.compoundliteral.52, ptr @nv40_perfctr_func }, %struct.nvkm_specdom { i16 240, ptr @.compoundliteral.77, ptr @nv40_perfctr_func }, %struct.nvkm_specdom { i16 32, ptr @.compoundliteral.78, ptr @nv40_perfctr_func }, %struct.nvkm_specdom { i16 32, ptr @.compoundliteral.79, ptr @nv40_perfctr_func }, %struct.nvkm_specdom zeroinitializer], align 4
@.compoundliteral.6 = internal constant [1 x %struct.nvkm_specsig] zeroinitializer, align 4
@nv40_perfctr_func = external dso_local constant %struct.nvkm_funcdom, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"pc01_gr_idle\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"pc01_strmout_00\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"pc01_strmout_01\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"pc01_trast_00\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"pc01_trast_01\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"pc01_trast_02\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"pc01_trast_03\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"pc01_trast_04\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"pc01_trast_05\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"pc01_vattr_00\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"pc01_vattr_01\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"pc01_vfetch_00\00", align 1
@nv50_vfetch_sources = internal constant [2 x %struct.nvkm_specsrc] [%struct.nvkm_specsrc { i32 4197388, ptr @.compoundliteral.80, ptr @.str.81 }, %struct.nvkm_specsrc zeroinitializer], align 4
@.str.19 = private unnamed_addr constant [15 x i8] c"pc01_vfetch_01\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"pc01_vfetch_02\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"pc01_vfetch_03\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"pc01_vfetch_04\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"pc01_vfetch_05\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"pc01_vfetch_06\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"pc01_vfetch_07\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"pc01_vfetch_08\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"pc01_vfetch_09\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"pc01_vfetch_0a\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"pc01_vfetch_0b\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"pc01_vfetch_0c\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"pc01_vfetch_0d\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"pc01_vfetch_0e\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"pc01_vfetch_0f\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"pc01_vfetch_10\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"pc01_vfetch_11\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"pc01_vfetch_12\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"pc01_vfetch_13\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"pc01_vfetch_14\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"pc01_vfetch_15\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"pc01_vfetch_16\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"pc01_vfetch_17\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"pc01_vfetch_18\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"pc01_vfetch_19\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"pc01_zcull_00\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"pc01_zcull_01\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"pc01_zcull_02\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"pc01_zcull_03\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"pc01_zcull_04\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"pc01_zcull_05\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"pc01_unk00\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"pc01_trailer\00", align 1
@.compoundliteral.52 = internal constant [46 x %struct.nvkm_specsig] [%struct.nvkm_specsig { i8 -56, ptr @.str.7, ptr null }, %struct.nvkm_specsig { i8 127, ptr @.str.8, ptr null }, %struct.nvkm_specsig { i8 -128, ptr @.str.9, ptr null }, %struct.nvkm_specsig { i8 -36, ptr @.str.10, ptr null }, %struct.nvkm_specsig { i8 -35, ptr @.str.11, ptr null }, %struct.nvkm_specsig { i8 -34, ptr @.str.12, ptr null }, %struct.nvkm_specsig { i8 -33, ptr @.str.13, ptr null }, %struct.nvkm_specsig { i8 -30, ptr @.str.14, ptr null }, %struct.nvkm_specsig { i8 -29, ptr @.str.15, ptr null }, %struct.nvkm_specsig { i8 124, ptr @.str.16, ptr null }, %struct.nvkm_specsig { i8 125, ptr @.str.17, ptr null }, %struct.nvkm_specsig { i8 38, ptr @.str.18, ptr @nv50_vfetch_sources }, %struct.nvkm_specsig { i8 39, ptr @.str.19, ptr @nv50_vfetch_sources }, %struct.nvkm_specsig { i8 40, ptr @.str.20, ptr @nv50_vfetch_sources }, %struct.nvkm_specsig { i8 41, ptr @.str.21, ptr @nv50_vfetch_sources }, %struct.nvkm_specsig { i8 42, ptr @.str.22, ptr @nv50_vfetch_sources }, %struct.nvkm_specsig { i8 43, ptr @.str.23, ptr @nv50_vfetch_sources }, %struct.nvkm_specsig { i8 44, ptr @.str.24, ptr @nv50_vfetch_sources }, %struct.nvkm_specsig { i8 45, ptr @.str.25, ptr @nv50_vfetch_sources }, %struct.nvkm_specsig { i8 46, ptr @.str.26, ptr @nv50_vfetch_sources }, %struct.nvkm_specsig { i8 47, ptr @.str.27, ptr @nv50_vfetch_sources }, %struct.nvkm_specsig { i8 48, ptr @.str.28, ptr @nv50_vfetch_sources }, %struct.nvkm_specsig { i8 49, ptr @.str.29, ptr @nv50_vfetch_sources }, %struct.nvkm_specsig { i8 50, ptr @.str.30, ptr @nv50_vfetch_sources }, %struct.nvkm_specsig { i8 51, ptr @.str.31, ptr @nv50_vfetch_sources }, %struct.nvkm_specsig { i8 52, ptr @.str.32, ptr @nv50_vfetch_sources }, %struct.nvkm_specsig { i8 53, ptr @.str.33, ptr @nv50_vfetch_sources }, %struct.nvkm_specsig { i8 54, ptr @.str.34, ptr @nv50_vfetch_sources }, %struct.nvkm_specsig { i8 55, ptr @.str.35, ptr @nv50_vfetch_sources }, %struct.nvkm_specsig { i8 56, ptr @.str.36, ptr @nv50_vfetch_sources }, %struct.nvkm_specsig { i8 57, ptr @.str.37, ptr @nv50_vfetch_sources }, %struct.nvkm_specsig { i8 58, ptr @.str.38, ptr @nv50_vfetch_sources }, %struct.nvkm_specsig { i8 59, ptr @.str.39, ptr @nv50_vfetch_sources }, %struct.nvkm_specsig { i8 60, ptr @.str.40, ptr @nv50_vfetch_sources }, %struct.nvkm_specsig { i8 61, ptr @.str.41, ptr @nv50_vfetch_sources }, %struct.nvkm_specsig { i8 62, ptr @.str.42, ptr @nv50_vfetch_sources }, %struct.nvkm_specsig { i8 63, ptr @.str.43, ptr @nv50_vfetch_sources }, %struct.nvkm_specsig { i8 32, ptr @.str.44, ptr @nv50_zcull_sources }, %struct.nvkm_specsig { i8 33, ptr @.str.45, ptr @nv50_zcull_sources }, %struct.nvkm_specsig { i8 34, ptr @.str.46, ptr @nv50_zcull_sources }, %struct.nvkm_specsig { i8 35, ptr @.str.47, ptr @nv50_zcull_sources }, %struct.nvkm_specsig { i8 36, ptr @.str.48, ptr @nv50_zcull_sources }, %struct.nvkm_specsig { i8 37, ptr @.str.49, ptr @nv50_zcull_sources }, %struct.nvkm_specsig { i8 -82, ptr @.str.50, ptr null }, %struct.nvkm_specsig { i8 -18, ptr @.str.51, ptr null }, %struct.nvkm_specsig zeroinitializer], align 4
@.str.53 = private unnamed_addr constant [13 x i8] c"pc02_crop_00\00", align 1
@nv50_crop_sources = internal constant [2 x %struct.nvkm_specsrc] [%struct.nvkm_specsrc { i32 4222984, ptr @.compoundliteral.82, ptr @.str.83 }, %struct.nvkm_specsrc zeroinitializer], align 4
@.str.54 = private unnamed_addr constant [13 x i8] c"pc02_crop_01\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"pc02_crop_02\00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c"pc02_crop_03\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"pc02_prop_00\00", align 1
@nv50_prop_sources = internal constant [2 x %struct.nvkm_specsrc] [%struct.nvkm_specsrc { i32 4243024, ptr @.compoundliteral.85, ptr @.str.86 }, %struct.nvkm_specsrc zeroinitializer], align 4
@.str.58 = private unnamed_addr constant [13 x i8] c"pc02_prop_01\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"pc02_prop_02\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"pc02_prop_03\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"pc02_prop_04\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"pc02_prop_05\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"pc02_prop_06\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"pc02_prop_07\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"pc02_tex_00\00", align 1
@nv50_tex_sources = internal constant [2 x %struct.nvkm_specsrc] [%struct.nvkm_specsrc { i32 4241416, ptr @.compoundliteral.87, ptr @.str.88 }, %struct.nvkm_specsrc zeroinitializer], align 4
@.str.66 = private unnamed_addr constant [12 x i8] c"pc02_tex_01\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"pc02_tex_02\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"pc02_tex_03\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"pc02_tex_04\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"pc02_tex_05\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"pc02_tex_06\00", align 1
@.str.72 = private unnamed_addr constant [13 x i8] c"pc02_zrop_00\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"pc02_zrop_01\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"pc02_zrop_02\00", align 1
@.str.75 = private unnamed_addr constant [13 x i8] c"pc02_zrop_03\00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"pc02_trailer\00", align 1
@.compoundliteral.77 = internal constant [25 x %struct.nvkm_specsig] [%struct.nvkm_specsig { i8 82, ptr @.str.53, ptr @nv50_crop_sources }, %struct.nvkm_specsig { i8 83, ptr @.str.54, ptr @nv50_crop_sources }, %struct.nvkm_specsig { i8 84, ptr @.str.55, ptr @nv50_crop_sources }, %struct.nvkm_specsig { i8 85, ptr @.str.56, ptr @nv50_crop_sources }, %struct.nvkm_specsig { i8 0, ptr @.str.57, ptr @nv50_prop_sources }, %struct.nvkm_specsig { i8 1, ptr @.str.58, ptr @nv50_prop_sources }, %struct.nvkm_specsig { i8 2, ptr @.str.59, ptr @nv50_prop_sources }, %struct.nvkm_specsig { i8 3, ptr @.str.60, ptr @nv50_prop_sources }, %struct.nvkm_specsig { i8 4, ptr @.str.61, ptr @nv50_prop_sources }, %struct.nvkm_specsig { i8 5, ptr @.str.62, ptr @nv50_prop_sources }, %struct.nvkm_specsig { i8 6, ptr @.str.63, ptr @nv50_prop_sources }, %struct.nvkm_specsig { i8 7, ptr @.str.64, ptr @nv50_prop_sources }, %struct.nvkm_specsig { i8 112, ptr @.str.65, ptr @nv50_tex_sources }, %struct.nvkm_specsig { i8 113, ptr @.str.66, ptr @nv50_tex_sources }, %struct.nvkm_specsig { i8 114, ptr @.str.67, ptr @nv50_tex_sources }, %struct.nvkm_specsig { i8 115, ptr @.str.68, ptr @nv50_tex_sources }, %struct.nvkm_specsig { i8 64, ptr @.str.69, ptr @nv50_tex_sources }, %struct.nvkm_specsig { i8 65, ptr @.str.70, ptr @nv50_tex_sources }, %struct.nvkm_specsig { i8 66, ptr @.str.71, ptr @nv50_tex_sources }, %struct.nvkm_specsig { i8 108, ptr @.str.72, ptr @nv50_zrop_sources }, %struct.nvkm_specsig { i8 109, ptr @.str.73, ptr @nv50_zrop_sources }, %struct.nvkm_specsig { i8 110, ptr @.str.74, ptr @nv50_zrop_sources }, %struct.nvkm_specsig { i8 111, ptr @.str.75, ptr @nv50_zrop_sources }, %struct.nvkm_specsig { i8 -18, ptr @.str.76, ptr null }, %struct.nvkm_specsig zeroinitializer], align 4
@.compoundliteral.78 = internal constant [1 x %struct.nvkm_specsig] zeroinitializer, align 4
@.compoundliteral.79 = internal constant [1 x %struct.nvkm_specsig] zeroinitializer, align 4
@.compoundliteral.80 = internal constant [2 x %struct.nvkm_specmux] [%struct.nvkm_specmux { i32 1, i8 0, ptr @.str, i8 0 }, %struct.nvkm_specmux zeroinitializer], align 4
@.str.81 = private unnamed_addr constant [20 x i8] c"pgraph_vfetch_unk0c\00", align 1
@.compoundliteral.82 = internal constant [3 x %struct.nvkm_specmux] [%struct.nvkm_specmux { i32 7, i8 0, ptr @.str.2, i8 1 }, %struct.nvkm_specmux { i32 7, i8 16, ptr @.str.3, i8 1 }, %struct.nvkm_specmux zeroinitializer], align 4
@.str.83 = private unnamed_addr constant [24 x i8] c"pgraph_rop0_crop_pm_mux\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"sel\00", align 1
@.compoundliteral.85 = internal constant [2 x %struct.nvkm_specmux] [%struct.nvkm_specmux { i32 31, i8 0, ptr @.str.84, i8 1 }, %struct.nvkm_specmux zeroinitializer], align 4
@.str.86 = private unnamed_addr constant [24 x i8] c"pgraph_tpc3_prop_pm_mux\00", align 1
@.compoundliteral.87 = internal constant [2 x %struct.nvkm_specmux] [%struct.nvkm_specmux { i32 16383, i8 0, ptr @.str, i8 0 }, %struct.nvkm_specmux zeroinitializer], align 4
@.str.88 = private unnamed_addr constant [22 x i8] c"pgraph_tpc3_tex_unk08\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_pm_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nv40_pm_new_(ptr noundef nonnull @nv50_pm, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #2
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv40_pm_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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
