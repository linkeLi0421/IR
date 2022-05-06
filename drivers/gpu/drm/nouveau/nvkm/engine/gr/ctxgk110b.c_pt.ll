; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgk110b.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgk110b.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gf100_gr_pack = type { ptr, i32 }
%struct.gf100_grctx_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gf100_gr_init = type { i32, i8, i32, i32 }

@gk110_grctx_pack_hub = external dso_local constant [0 x %struct.gf100_gr_pack], align 4
@gk110_grctx_pack_gpc_0 = external dso_local constant [0 x %struct.gf100_gr_pack], align 4
@gk110_grctx_pack_gpc_1 = external dso_local constant [0 x %struct.gf100_gr_pack], align 4
@gf100_grctx_pack_zcull = external dso_local constant [0 x %struct.gf100_gr_pack], align 4
@gk110b_grctx_pack_tpc = internal constant [6 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf117_grctx_init_pe_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk110_grctx_init_tex_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk110_grctx_init_mpc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk110_grctx_init_l1c_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk110b_grctx_init_sm_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], align 4
@gk110_grctx_pack_ppc = external dso_local constant [0 x %struct.gf100_gr_pack], align 4
@gk110_grctx_pack_icmd = external dso_local constant [0 x %struct.gf100_gr_pack], align 4
@gk110_grctx_pack_mthd = external dso_local constant [0 x %struct.gf100_gr_pack], align 4
@gk110b_grctx = dso_local local_unnamed_addr constant %struct.gf100_grctx_func { ptr null, ptr @gf100_grctx_generate_main, ptr @gk104_grctx_generate_unkn, ptr @gk110_grctx_pack_hub, ptr @gk110_grctx_pack_gpc_0, ptr @gk110_grctx_pack_gpc_1, ptr @gf100_grctx_pack_zcull, ptr @gk110b_grctx_pack_tpc, ptr @gk110_grctx_pack_ppc, ptr @gk110_grctx_pack_icmd, ptr @gk110_grctx_pack_mthd, ptr null, ptr @gk104_grctx_generate_bundle, i32 12288, i32 384, i32 1536, ptr @gk104_grctx_generate_pagepool, i32 32768, ptr @gf117_grctx_generate_attrib, i32 804, i32 536, i32 2047, i32 1608, i32 0, ptr @gk104_grctx_generate_patch_ltc, ptr @gf100_grctx_generate_sm_id, ptr @gf100_grctx_generate_tpc_nr, i8 0, ptr null, ptr @gf117_grctx_generate_rop_mapping, ptr @gk104_grctx_generate_alpha_beta_tables, ptr null, ptr @gf117_grctx_generate_dist_skip_table, ptr null, ptr @gk104_grctx_generate_gpc_tpc_nr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gk104_grctx_generate_r418800, ptr @gk110_grctx_generate_r419eb0, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@gf117_grctx_init_pe_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk110_grctx_init_tex_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk110_grctx_init_mpc_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk110_grctx_init_l1c_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk110b_grctx_init_sm_0 = internal constant [24 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4300292, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300296, i8 1, i32 4, i32 29 }, %struct.gf100_gr_init { i32 4300300, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300304, i8 1, i32 4, i32 7170 }, %struct.gf100_gr_init { i32 4300356, i8 1, i32 4, i32 1306610 }, %struct.gf100_gr_init { i32 4300360, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300364, i8 1, i32 4, i32 127 }, %struct.gf100_gr_init { i32 4300368, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300376, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4300380, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300392, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 4300396, i8 12, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300460, i8 1, i32 4, i32 8079 }, %struct.gf100_gr_init { i32 4300464, i8 1, i32 4, i32 229641519 }, %struct.gf100_gr_init { i32 4300472, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300488, i8 1, i32 4, i32 77903 }, %struct.gf100_gr_init { i32 4300592, i8 4, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300608, i8 1, i32 4, i32 24 }, %struct.gf100_gr_init { i32 4300612, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300632, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300656, i8 1, i32 4, i32 25344 }, %struct.gf100_gr_init { i32 4300664, i8 1, i32 4, i32 235 }, %struct.gf100_gr_init { i32 4300668, i8 1, i32 4, i32 1028 }, %struct.gf100_gr_init zeroinitializer], align 4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_main(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_unkn(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_bundle(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_pagepool(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf117_grctx_generate_attrib(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_patch_ltc(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_sm_id(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_tpc_nr(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf117_grctx_generate_rop_mapping(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_alpha_beta_tables(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf117_grctx_generate_dist_skip_table(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_gpc_tpc_nr(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_r418800(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk110_grctx_generate_r419eb0(ptr noundef) #0

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
