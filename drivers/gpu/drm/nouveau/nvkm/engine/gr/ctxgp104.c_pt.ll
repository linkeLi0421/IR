; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgp104.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgp104.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gf100_grctx_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@gp104_grctx = dso_local local_unnamed_addr constant %struct.gf100_grctx_func { ptr null, ptr @gf100_grctx_generate_main, ptr @gk104_grctx_generate_unkn, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gm107_grctx_generate_bundle, i32 12288, i32 384, i32 2304, ptr @gp100_grctx_generate_pagepool, i32 131072, ptr @gp102_grctx_generate_attrib, i32 1200, i32 800, i32 3072, i32 2048, i32 2984, ptr null, ptr @gm107_grctx_generate_sm_id, ptr null, i8 0, ptr null, ptr @gf117_grctx_generate_rop_mapping, ptr null, ptr null, ptr @gm200_grctx_generate_dist_skip_table, ptr @gm200_grctx_generate_r406500, ptr @gk104_grctx_generate_gpc_tpc_nr, ptr null, ptr @gm200_grctx_generate_tpc_mask, ptr @gp100_grctx_generate_smid_config, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gm200_grctx_generate_r419a3c, ptr null, ptr null }, align 4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_main(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_unkn(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_grctx_generate_bundle(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp100_grctx_generate_pagepool(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp102_grctx_generate_attrib(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_grctx_generate_sm_id(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf117_grctx_generate_rop_mapping(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_grctx_generate_dist_skip_table(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_grctx_generate_r406500(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_gpc_tpc_nr(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_grctx_generate_tpc_mask(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp100_grctx_generate_smid_config(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_grctx_generate_r419a3c(ptr noundef) #0

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

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
