; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gf100_gr_fwif = type { i32, ptr, ptr, ptr, ptr }
%struct.nvkm_acr_lsf_func = type opaque
%struct.gf100_grctx_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gf100_gr_func_zbc = type { ptr, ptr, ptr, ptr }
%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.134 = type { ptr }
%struct.anon.135 = type { ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.gf100_gr = type { ptr, %struct.nvkm_gr, %struct.anon.136, %struct.anon.142, i8, ptr, ptr, ptr, ptr, [16 x %struct.gf100_gr_zbc_color], [16 x %struct.gf100_gr_zbc_depth], [16 x %struct.gf100_gr_zbc_stencil], i8, i8, [32 x i8], i8, i8, [32 x i8], [32 x i8], [32 x [4 x i8]], [32 x [4 x i8]], i8, i8, i8, [256 x i8], [256 x %struct.anon.143], i8, [4 x %struct.gf100_gr_data], [512 x %struct.gf100_gr_mmio], i32, ptr, i32, i32 }
%struct.nvkm_gr = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.74 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.74 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.136 = type { %struct.nvkm_falcon, %struct.nvkm_blob, %struct.nvkm_blob, %struct.mutex, i32 }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.140, %struct.anon.141, %struct.nvkm_engine }
%struct.anon.140 = type { i32, ptr, i32, i8 }
%struct.anon.141 = type { i32, ptr, i32, i8 }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.142 = type { %struct.nvkm_falcon, %struct.nvkm_blob, %struct.nvkm_blob }
%struct.gf100_gr_zbc_color = type { i32, [4 x i32], [4 x i32] }
%struct.gf100_gr_zbc_depth = type { i32, i32, i32 }
%struct.gf100_gr_zbc_stencil = type { i32, i32, i32 }
%struct.anon.143 = type { i8, i8 }
%struct.gf100_gr_data = type { i32, i32, i8 }
%struct.gf100_gr_mmio = type { i32, i32, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.126, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.126 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@__UNIQUE_ID_firmware252 = internal constant [37 x i8] c"firmware=nvidia/tu102/gr/fecs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware253 = internal constant [39 x i8] c"firmware=nvidia/tu102/gr/fecs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware254 = internal constant [39 x i8] c"firmware=nvidia/tu102/gr/fecs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware255 = internal constant [38 x i8] c"firmware=nvidia/tu102/gr/fecs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware256 = internal constant [38 x i8] c"firmware=nvidia/tu102/gr/gpccs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware257 = internal constant [40 x i8] c"firmware=nvidia/tu102/gr/gpccs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware258 = internal constant [40 x i8] c"firmware=nvidia/tu102/gr/gpccs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware259 = internal constant [39 x i8] c"firmware=nvidia/tu102/gr/gpccs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware260 = internal constant [36 x i8] c"firmware=nvidia/tu102/gr/sw_ctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware261 = internal constant [39 x i8] c"firmware=nvidia/tu102/gr/sw_nonctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware262 = internal constant [44 x i8] c"firmware=nvidia/tu102/gr/sw_bundle_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware263 = internal constant [44 x i8] c"firmware=nvidia/tu102/gr/sw_method_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware264 = internal constant [37 x i8] c"firmware=nvidia/tu104/gr/fecs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware265 = internal constant [39 x i8] c"firmware=nvidia/tu104/gr/fecs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware266 = internal constant [39 x i8] c"firmware=nvidia/tu104/gr/fecs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware267 = internal constant [38 x i8] c"firmware=nvidia/tu104/gr/fecs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware268 = internal constant [38 x i8] c"firmware=nvidia/tu104/gr/gpccs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware269 = internal constant [40 x i8] c"firmware=nvidia/tu104/gr/gpccs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware270 = internal constant [40 x i8] c"firmware=nvidia/tu104/gr/gpccs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware271 = internal constant [39 x i8] c"firmware=nvidia/tu104/gr/gpccs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware272 = internal constant [36 x i8] c"firmware=nvidia/tu104/gr/sw_ctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware273 = internal constant [39 x i8] c"firmware=nvidia/tu104/gr/sw_nonctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware274 = internal constant [44 x i8] c"firmware=nvidia/tu104/gr/sw_bundle_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware275 = internal constant [44 x i8] c"firmware=nvidia/tu104/gr/sw_method_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware276 = internal constant [37 x i8] c"firmware=nvidia/tu106/gr/fecs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware277 = internal constant [39 x i8] c"firmware=nvidia/tu106/gr/fecs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware278 = internal constant [39 x i8] c"firmware=nvidia/tu106/gr/fecs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware279 = internal constant [38 x i8] c"firmware=nvidia/tu106/gr/fecs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware280 = internal constant [38 x i8] c"firmware=nvidia/tu106/gr/gpccs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware281 = internal constant [40 x i8] c"firmware=nvidia/tu106/gr/gpccs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware282 = internal constant [40 x i8] c"firmware=nvidia/tu106/gr/gpccs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware283 = internal constant [39 x i8] c"firmware=nvidia/tu106/gr/gpccs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware284 = internal constant [36 x i8] c"firmware=nvidia/tu106/gr/sw_ctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware285 = internal constant [39 x i8] c"firmware=nvidia/tu106/gr/sw_nonctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware286 = internal constant [44 x i8] c"firmware=nvidia/tu106/gr/sw_bundle_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware287 = internal constant [44 x i8] c"firmware=nvidia/tu106/gr/sw_method_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware288 = internal constant [37 x i8] c"firmware=nvidia/tu117/gr/fecs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware289 = internal constant [39 x i8] c"firmware=nvidia/tu117/gr/fecs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware290 = internal constant [39 x i8] c"firmware=nvidia/tu117/gr/fecs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware291 = internal constant [38 x i8] c"firmware=nvidia/tu117/gr/fecs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware292 = internal constant [38 x i8] c"firmware=nvidia/tu117/gr/gpccs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware293 = internal constant [40 x i8] c"firmware=nvidia/tu117/gr/gpccs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware294 = internal constant [40 x i8] c"firmware=nvidia/tu117/gr/gpccs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware295 = internal constant [39 x i8] c"firmware=nvidia/tu117/gr/gpccs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware296 = internal constant [36 x i8] c"firmware=nvidia/tu117/gr/sw_ctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware297 = internal constant [39 x i8] c"firmware=nvidia/tu117/gr/sw_nonctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware298 = internal constant [44 x i8] c"firmware=nvidia/tu117/gr/sw_bundle_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware299 = internal constant [44 x i8] c"firmware=nvidia/tu117/gr/sw_method_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware300 = internal constant [37 x i8] c"firmware=nvidia/tu116/gr/fecs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware301 = internal constant [39 x i8] c"firmware=nvidia/tu116/gr/fecs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware302 = internal constant [39 x i8] c"firmware=nvidia/tu116/gr/fecs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware303 = internal constant [38 x i8] c"firmware=nvidia/tu116/gr/fecs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware304 = internal constant [38 x i8] c"firmware=nvidia/tu116/gr/gpccs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware305 = internal constant [40 x i8] c"firmware=nvidia/tu116/gr/gpccs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware306 = internal constant [40 x i8] c"firmware=nvidia/tu116/gr/gpccs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware307 = internal constant [39 x i8] c"firmware=nvidia/tu116/gr/gpccs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware308 = internal constant [36 x i8] c"firmware=nvidia/tu116/gr/sw_ctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware309 = internal constant [39 x i8] c"firmware=nvidia/tu116/gr/sw_nonctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware310 = internal constant [44 x i8] c"firmware=nvidia/tu116/gr/sw_bundle_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware311 = internal constant [44 x i8] c"firmware=nvidia/tu116/gr/sw_method_init.bin\00", section ".modinfo", align 1
@tu102_gr_fwif = internal constant [3 x %struct.gf100_gr_fwif] [%struct.gf100_gr_fwif { i32 0, ptr @gm200_gr_load, ptr @tu102_gr, ptr @gp108_gr_fecs_acr, ptr @gp108_gr_gpccs_acr }, %struct.gf100_gr_fwif { i32 -1, ptr @gm200_gr_nofw, ptr null, ptr null, ptr null }, %struct.gf100_gr_fwif zeroinitializer], align 4
@gp108_gr_fecs_acr = external dso_local constant %struct.nvkm_acr_lsf_func, align 1
@gp108_gr_gpccs_acr = external dso_local constant %struct.nvkm_acr_lsf_func, align 1
@tu102_grctx = external dso_local constant %struct.gf100_grctx_func, align 4
@gp102_gr_zbc = external dso_local constant %struct.gf100_gr_func_zbc, align 4
@gf100_fermi = external dso_local constant %struct.nvkm_object_func, align 4
@tu102_gr = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.134, %struct.anon.135, ptr, i32, i32, i32, ptr, ptr, ptr, [5 x %struct.nvkm_sclass] } { ptr @gm200_gr_oneinit_tiles, ptr @gm200_gr_oneinit_sm_id, ptr @gf100_gr_init, ptr @gv100_gr_init_419bd8, ptr @tu102_gr_init_gpc_mmu, ptr null, ptr null, ptr @gk104_gr_init_vsc_stream_master, ptr @tu102_gr_init_zcull, ptr @gf100_gr_init_num_active_ltcs, ptr @gp100_gr_init_rop_active_fbps, ptr null, ptr @gp102_gr_init_swdx_pes_mask, ptr @tu102_gr_init_fs, ptr @tu102_gr_init_fecs_exceptions, ptr @gm200_gr_init_ds_hww_esr_2, ptr null, ptr @gk104_gr_init_sked_hww_esr, ptr null, ptr null, ptr null, ptr @gk104_gr_init_ppc_exceptions, ptr null, ptr @gv100_gr_init_504430, ptr @gv100_gr_init_shader_exceptions, ptr null, ptr null, ptr @gv100_gr_trap_mp, ptr null, ptr null, %struct.anon.134 zeroinitializer, %struct.anon.135 zeroinitializer, ptr @gm200_gr_rops, i32 6, i32 5, i32 3, ptr @tu102_grctx, ptr null, ptr @gp102_gr_zbc, [5 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 36909, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 41280, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 50583, ptr @gf100_fermi, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 50624, ptr null, ptr null }, %struct.nvkm_sclass zeroinitializer] }, align 4
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_firmware252, ptr @__UNIQUE_ID_firmware253, ptr @__UNIQUE_ID_firmware254, ptr @__UNIQUE_ID_firmware255, ptr @__UNIQUE_ID_firmware256, ptr @__UNIQUE_ID_firmware257, ptr @__UNIQUE_ID_firmware258, ptr @__UNIQUE_ID_firmware259, ptr @__UNIQUE_ID_firmware260, ptr @__UNIQUE_ID_firmware261, ptr @__UNIQUE_ID_firmware262, ptr @__UNIQUE_ID_firmware263, ptr @__UNIQUE_ID_firmware264, ptr @__UNIQUE_ID_firmware265, ptr @__UNIQUE_ID_firmware266, ptr @__UNIQUE_ID_firmware267, ptr @__UNIQUE_ID_firmware268, ptr @__UNIQUE_ID_firmware269, ptr @__UNIQUE_ID_firmware270, ptr @__UNIQUE_ID_firmware271, ptr @__UNIQUE_ID_firmware272, ptr @__UNIQUE_ID_firmware273, ptr @__UNIQUE_ID_firmware274, ptr @__UNIQUE_ID_firmware275, ptr @__UNIQUE_ID_firmware276, ptr @__UNIQUE_ID_firmware277, ptr @__UNIQUE_ID_firmware278, ptr @__UNIQUE_ID_firmware279, ptr @__UNIQUE_ID_firmware280, ptr @__UNIQUE_ID_firmware281, ptr @__UNIQUE_ID_firmware282, ptr @__UNIQUE_ID_firmware283, ptr @__UNIQUE_ID_firmware284, ptr @__UNIQUE_ID_firmware285, ptr @__UNIQUE_ID_firmware286, ptr @__UNIQUE_ID_firmware287, ptr @__UNIQUE_ID_firmware288, ptr @__UNIQUE_ID_firmware289, ptr @__UNIQUE_ID_firmware290, ptr @__UNIQUE_ID_firmware291, ptr @__UNIQUE_ID_firmware292, ptr @__UNIQUE_ID_firmware293, ptr @__UNIQUE_ID_firmware294, ptr @__UNIQUE_ID_firmware295, ptr @__UNIQUE_ID_firmware296, ptr @__UNIQUE_ID_firmware297, ptr @__UNIQUE_ID_firmware298, ptr @__UNIQUE_ID_firmware299, ptr @__UNIQUE_ID_firmware300, ptr @__UNIQUE_ID_firmware301, ptr @__UNIQUE_ID_firmware302, ptr @__UNIQUE_ID_firmware303, ptr @__UNIQUE_ID_firmware304, ptr @__UNIQUE_ID_firmware305, ptr @__UNIQUE_ID_firmware306, ptr @__UNIQUE_ID_firmware307, ptr @__UNIQUE_ID_firmware308, ptr @__UNIQUE_ID_firmware309, ptr @__UNIQUE_ID_firmware310, ptr @__UNIQUE_ID_firmware311], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tu102_gr_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @gf100_gr_new_(ptr noundef nonnull @tu102_gr_fwif, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #5
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_gr_load(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_gr_nofw(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_gr_oneinit_tiles(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_gr_oneinit_sm_id(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gv100_gr_init_419bd8(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tu102_gr_init_gpc_mmu(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 1051776
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %8 = and i32 %7, -134209537
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 4294784
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #5, !srcloc !11
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 4294800
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #5, !srcloc !11
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %13, i32 4294804
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #5, !srcloc !11
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr i8, ptr %15, i32 1051848
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr i8, ptr %18, i32 4294836
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #5, !srcloc !11
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr i8, ptr %20, i32 1051852
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr i8, ptr %23, i32 4294840
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #5, !srcloc !11
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr i8, ptr %25, i32 1051844
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %28 = load ptr, ptr %4, align 4
  %29 = getelementptr i8, ptr %28, i32 4294832
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #5, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_gr_init_vsc_stream_master(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tu102_gr_init_zcull(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [32 x i8], align 1
  %3 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 16
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = add nuw nsw i32 %7, 8388607
  %9 = udiv i32 %8, %7
  %10 = add i8 %6, 63
  %11 = and i8 %10, -64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false)
  %12 = zext i8 %11 to i32
  %13 = icmp eq i8 %11, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  br label %16

16:                                               ; preds = %132, %14
  %17 = phi i8 [ %6, %14 ], [ %133, %132 ]
  %18 = phi i32 [ 0, %14 ], [ %130, %132 ]
  %19 = phi i32 [ 0, %14 ], [ %129, %132 ]
  %20 = zext i8 %17 to i32
  %21 = call i32 @llvm.usub.sat.i32(i32 %20, i32 %18)
  %22 = icmp ult i32 %18, %20
  br i1 %22, label %30, label %122

23:                                               ; preds = %122, %1
  %24 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 13
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %160, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 23
  %29 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  br label %134

30:                                               ; preds = %16
  %31 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 24, i32 %18
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = getelementptr [32 x i8], ptr %2, i32 0, i32 %33
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = add i8 %35, 1
  store i8 %37, ptr %34, align 1
  %38 = icmp eq i32 %21, 1
  br i1 %38, label %122, label %39

39:                                               ; preds = %30
  %40 = add nuw nsw i32 %18, 1
  %41 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 24, i32 %40
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = getelementptr [32 x i8], ptr %2, i32 0, i32 %43
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 4
  %48 = or i32 %47, %36
  %49 = add i8 %45, 1
  store i8 %49, ptr %44, align 1
  %50 = icmp eq i32 %21, 2
  br i1 %50, label %122, label %51

51:                                               ; preds = %39
  %52 = add nuw nsw i32 %18, 2
  %53 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 24, i32 %52
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = getelementptr [32 x i8], ptr %2, i32 0, i32 %55
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = shl nuw nsw i32 %58, 8
  %60 = or i32 %59, %48
  %61 = add i8 %57, 1
  store i8 %61, ptr %56, align 1
  %62 = icmp eq i32 %21, 3
  br i1 %62, label %122, label %63

63:                                               ; preds = %51
  %64 = add nuw nsw i32 %18, 3
  %65 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 24, i32 %64
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = getelementptr [32 x i8], ptr %2, i32 0, i32 %67
  %69 = load i8, ptr %68, align 1
  %70 = zext i8 %69 to i32
  %71 = shl nuw nsw i32 %70, 12
  %72 = or i32 %71, %60
  %73 = add i8 %69, 1
  store i8 %73, ptr %68, align 1
  %74 = icmp eq i32 %21, 4
  br i1 %74, label %122, label %75

75:                                               ; preds = %63
  %76 = add nuw nsw i32 %18, 4
  %77 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 24, i32 %76
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i32
  %80 = getelementptr [32 x i8], ptr %2, i32 0, i32 %79
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = shl nuw nsw i32 %82, 16
  %84 = or i32 %83, %72
  %85 = add i8 %81, 1
  store i8 %85, ptr %80, align 1
  %86 = icmp eq i32 %21, 5
  br i1 %86, label %122, label %87

87:                                               ; preds = %75
  %88 = add nuw nsw i32 %18, 5
  %89 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 24, i32 %88
  %90 = load i8, ptr %89, align 1
  %91 = zext i8 %90 to i32
  %92 = getelementptr [32 x i8], ptr %2, i32 0, i32 %91
  %93 = load i8, ptr %92, align 1
  %94 = zext i8 %93 to i32
  %95 = shl nuw nsw i32 %94, 20
  %96 = or i32 %95, %84
  %97 = add i8 %93, 1
  store i8 %97, ptr %92, align 1
  %98 = icmp eq i32 %21, 6
  br i1 %98, label %122, label %99

99:                                               ; preds = %87
  %100 = add nuw nsw i32 %18, 6
  %101 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 24, i32 %100
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %102 to i32
  %104 = getelementptr [32 x i8], ptr %2, i32 0, i32 %103
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i32
  %107 = shl nuw i32 %106, 24
  %108 = or i32 %107, %96
  %109 = add i8 %105, 1
  store i8 %109, ptr %104, align 1
  %110 = icmp eq i32 %21, 7
  br i1 %110, label %122, label %111

111:                                              ; preds = %99
  %112 = add nuw nsw i32 %18, 7
  %113 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 24, i32 %112
  %114 = load i8, ptr %113, align 1
  %115 = zext i8 %114 to i32
  %116 = getelementptr [32 x i8], ptr %2, i32 0, i32 %115
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i32
  %119 = shl i32 %118, 28
  %120 = or i32 %119, %108
  %121 = add i8 %117, 1
  store i8 %121, ptr %116, align 1
  br label %122

122:                                              ; preds = %111, %99, %87, %75, %63, %51, %39, %30, %16
  %123 = phi i32 [ 0, %16 ], [ %36, %30 ], [ %48, %39 ], [ %60, %51 ], [ %72, %63 ], [ %84, %75 ], [ %96, %87 ], [ %108, %99 ], [ %120, %111 ]
  %124 = load ptr, ptr %15, align 4
  %125 = lshr i32 %19, 1
  %126 = and i32 %125, 124
  %127 = or i32 %126, 4295040
  %128 = getelementptr i8, ptr %124, i32 %127
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %123) #5, !srcloc !11
  %129 = add nuw nsw i32 %18, 8
  %130 = and i32 %129, 255
  %131 = icmp ult i32 %130, %12
  br i1 %131, label %132, label %23

132:                                              ; preds = %122
  %133 = load i8, ptr %5, align 1
  br label %16

134:                                              ; preds = %134, %27
  %135 = phi i32 [ 0, %27 ], [ %156, %134 ]
  %136 = load i8, ptr %28, align 2
  %137 = zext i8 %136 to i32
  %138 = shl nuw nsw i32 %137, 8
  %139 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 14, i32 %135
  %140 = load i8, ptr %139, align 1
  %141 = zext i8 %140 to i32
  %142 = or i32 %138, %141
  %143 = load ptr, ptr %29, align 4
  %144 = shl nuw nsw i32 %135, 15
  %145 = add nuw nsw i32 %144, 5245204
  %146 = getelementptr i8, ptr %143, i32 %145
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 %142) #5, !srcloc !11
  %147 = load i8, ptr %5, align 1
  %148 = zext i8 %147 to i32
  %149 = or i32 %148, 262144
  %150 = load ptr, ptr %29, align 4
  %151 = add nuw nsw i32 %144, 5245200
  %152 = getelementptr i8, ptr %150, i32 %151
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 %149) #5, !srcloc !11
  %153 = load ptr, ptr %29, align 4
  %154 = add nuw nsw i32 %144, 5245208
  %155 = getelementptr i8, ptr %153, i32 %154
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 %9) #5, !srcloc !11
  %156 = add nuw nsw i32 %135, 1
  %157 = load i8, ptr %24, align 1
  %158 = zext i8 %157 to i32
  %159 = icmp ult i32 %156, %158
  br i1 %159, label %134, label %160

160:                                              ; preds = %134, %23
  %161 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %162 = load ptr, ptr %161, align 4
  %163 = getelementptr i8, ptr %162, i32 4308948
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %163, i32 %9) #5, !srcloc !11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_num_active_ltcs(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp100_gr_init_rop_active_fbps(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp102_gr_init_swdx_pes_mask(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tu102_gr_init_fs(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @gp100_grctx_generate_smid_config(ptr noundef %0) #5
  tail call void @gk104_grctx_generate_gpc_tpc_nr(ptr noundef %0) #5
  %4 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 26
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ 0, %7 ], [ %23, %9 ]
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 25, i32 %10
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 15
  %16 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 25, i32 %10, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 2
  %20 = or i32 %19, %15
  %21 = add nuw nsw i32 %20, 5245968
  %22 = getelementptr i8, ptr %11, i32 %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %10) #5, !srcloc !11
  %23 = add nuw nsw i32 %10, 1
  %24 = load i8, ptr %4, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp ult i32 %23, %25
  br i1 %26, label %9, label %27

27:                                               ; preds = %9, %1
  tail call void @gm200_grctx_generate_dist_skip_table(ptr noundef %0) #5
  tail call void @gf100_gr_init_num_tpc_per_gpc(ptr noundef %0, i1 noundef zeroext true, i1 noundef zeroext true) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tu102_gr_init_fecs_exceptions(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4234276
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 7274498) #5, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_gr_init_ds_hww_esr_2(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_gr_init_sked_hww_esr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_gr_init_ppc_exceptions(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gv100_gr_init_504430(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gv100_gr_init_shader_exceptions(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gv100_gr_trap_mp(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_gr_rops(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp100_grctx_generate_smid_config(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_gpc_tpc_nr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_grctx_generate_dist_skip_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_num_tpc_per_gpc(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

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
!8 = !{i64 3965151}
!9 = !{i64 2151504604}
!10 = !{i64 2151505826}
!11 = !{i64 3964733}
