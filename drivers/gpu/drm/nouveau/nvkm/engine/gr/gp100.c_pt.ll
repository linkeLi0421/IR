; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/gr/gp100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp100.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gf100_gr_func_zbc = type { ptr, ptr, ptr, ptr }
%struct.gf100_gr_fwif = type { i32, ptr, ptr, ptr, ptr }
%struct.nvkm_acr_lsf_func = type opaque
%struct.gf100_grctx_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { ptr }
%struct.anon.0 = type { ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.gf100_gr = type { ptr, %struct.nvkm_gr, %struct.anon.125, %struct.anon.131, i8, ptr, ptr, ptr, ptr, [16 x %struct.gf100_gr_zbc_color], [16 x %struct.gf100_gr_zbc_depth], [16 x %struct.gf100_gr_zbc_stencil], i8, i8, [32 x i8], i8, i8, [32 x i8], [32 x i8], [32 x [4 x i8]], [32 x [4 x i8]], i8, i8, i8, [256 x i8], [256 x %struct.anon.132], i8, [4 x %struct.gf100_gr_data], [512 x %struct.gf100_gr_mmio], i32, ptr, i32, i32 }
%struct.nvkm_gr = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.122 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.anon.122 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.125 = type { %struct.nvkm_falcon, %struct.nvkm_blob, %struct.nvkm_blob, %struct.mutex, i32 }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.129, %struct.anon.130, %struct.nvkm_engine }
%struct.anon.129 = type { i32, ptr, i32, i8 }
%struct.anon.130 = type { i32, ptr, i32, i8 }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.131 = type { %struct.nvkm_falcon, %struct.nvkm_blob, %struct.nvkm_blob }
%struct.gf100_gr_zbc_color = type { i32, [4 x i32], [4 x i32] }
%struct.gf100_gr_zbc_depth = type { i32, i32, i32 }
%struct.gf100_gr_zbc_stencil = type { i32, i32, i32 }
%struct.anon.132 = type { i8, i8 }
%struct.gf100_gr_data = type { i32, i32, i8 }
%struct.gf100_gr_mmio = type { i32, i32, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.121, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.121 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@gp100_gr_zbc = dso_local constant %struct.gf100_gr_func_zbc { ptr @gp100_gr_zbc_clear_color, ptr @gp100_gr_zbc_clear_depth, ptr null, ptr null }, align 4
@__UNIQUE_ID_firmware252 = internal constant [37 x i8] c"firmware=nvidia/gp100/gr/fecs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware253 = internal constant [39 x i8] c"firmware=nvidia/gp100/gr/fecs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware254 = internal constant [39 x i8] c"firmware=nvidia/gp100/gr/fecs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware255 = internal constant [38 x i8] c"firmware=nvidia/gp100/gr/fecs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware256 = internal constant [38 x i8] c"firmware=nvidia/gp100/gr/gpccs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware257 = internal constant [40 x i8] c"firmware=nvidia/gp100/gr/gpccs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware258 = internal constant [40 x i8] c"firmware=nvidia/gp100/gr/gpccs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware259 = internal constant [39 x i8] c"firmware=nvidia/gp100/gr/gpccs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware260 = internal constant [36 x i8] c"firmware=nvidia/gp100/gr/sw_ctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware261 = internal constant [39 x i8] c"firmware=nvidia/gp100/gr/sw_nonctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware262 = internal constant [44 x i8] c"firmware=nvidia/gp100/gr/sw_bundle_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware263 = internal constant [44 x i8] c"firmware=nvidia/gp100/gr/sw_method_init.bin\00", section ".modinfo", align 1
@gp100_gr_fwif = internal constant [3 x %struct.gf100_gr_fwif] [%struct.gf100_gr_fwif { i32 0, ptr @gm200_gr_load, ptr @gp100_gr, ptr @gm200_gr_fecs_acr, ptr @gm200_gr_gpccs_acr }, %struct.gf100_gr_fwif { i32 -1, ptr @gm200_gr_nofw, ptr null, ptr null, ptr null }, %struct.gf100_gr_fwif zeroinitializer], align 4
@gm200_gr_fecs_acr = external dso_local constant %struct.nvkm_acr_lsf_func, align 1
@gm200_gr_gpccs_acr = external dso_local constant %struct.nvkm_acr_lsf_func, align 1
@gp100_grctx = external dso_local constant %struct.gf100_grctx_func, align 4
@gf100_fermi = external dso_local constant %struct.nvkm_object_func, align 4
@gp100_gr = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [5 x %struct.nvkm_sclass] } { ptr @gm200_gr_oneinit_tiles, ptr @gm200_gr_oneinit_sm_id, ptr @gf100_gr_init, ptr null, ptr @gm200_gr_init_gpc_mmu, ptr null, ptr null, ptr @gk104_gr_init_vsc_stream_master, ptr @gf117_gr_init_zcull, ptr @gm200_gr_init_num_active_ltcs, ptr @gp100_gr_init_rop_active_fbps, ptr null, ptr null, ptr null, ptr @gp100_gr_init_fecs_exceptions, ptr @gm200_gr_init_ds_hww_esr_2, ptr null, ptr @gk104_gr_init_sked_hww_esr, ptr @gf100_gr_init_419cc0, ptr null, ptr @gp100_gr_init_419c9c, ptr @gk104_gr_init_ppc_exceptions, ptr @gf100_gr_init_tex_hww_esr, ptr @gm107_gr_init_504430, ptr @gp100_gr_init_shader_exceptions, ptr null, ptr null, ptr @gf100_gr_trap_mp, ptr null, ptr null, %struct.anon zeroinitializer, %struct.anon.0 zeroinitializer, ptr @gm200_gr_rops, i32 6, i32 5, i32 2, ptr @gp100_grctx, ptr null, ptr @gp100_gr_zbc, [5 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 36909, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 41280, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 49303, ptr @gf100_fermi, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 49344, ptr null, ptr null }, %struct.nvkm_sclass zeroinitializer] }, align 4
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_firmware252, ptr @__UNIQUE_ID_firmware253, ptr @__UNIQUE_ID_firmware254, ptr @__UNIQUE_ID_firmware255, ptr @__UNIQUE_ID_firmware256, ptr @__UNIQUE_ID_firmware257, ptr @__UNIQUE_ID_firmware258, ptr @__UNIQUE_ID_firmware259, ptr @__UNIQUE_ID_firmware260, ptr @__UNIQUE_ID_firmware261, ptr @__UNIQUE_ID_firmware262, ptr @__UNIQUE_ID_firmware263], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gp100_gr_zbc_clear_color(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = add i32 %1, -1
  %6 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 9, i32 %1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %32, label %9

9:                                                ; preds = %2
  %10 = shl i32 %5, 2
  %11 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 9, i32 %1, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = add i32 %10, 4292624
  %16 = getelementptr i8, ptr %14, i32 %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %12) #2, !srcloc !9
  %17 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 9, i32 %1, i32 1, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %13, align 4
  %20 = add i32 %10, 4292684
  %21 = getelementptr i8, ptr %19, i32 %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %18) #2, !srcloc !9
  %22 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 9, i32 %1, i32 1, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = load ptr, ptr %13, align 4
  %25 = add i32 %10, 4292744
  %26 = getelementptr i8, ptr %24, i32 %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %23) #2, !srcloc !9
  %27 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 9, i32 %1, i32 1, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = load ptr, ptr %13, align 4
  %30 = add i32 %10, 4292804
  %31 = getelementptr i8, ptr %29, i32 %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %28) #2, !srcloc !9
  br label %32

32:                                               ; preds = %9, %2
  %33 = sdiv i32 %5, 4
  %34 = shl nsw i32 %33, 2
  %35 = add i32 %34, 4292864
  %36 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %37, i32 %35
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !11
  %40 = mul i32 %33, 4
  %41 = sub i32 %5, %40
  %42 = mul nsw i32 %41, 7
  %43 = shl nuw nsw i32 127, %42
  %44 = xor i32 %43, -1
  %45 = and i32 %39, %44
  %46 = load i32, ptr %6, align 4
  %47 = shl i32 %46, %42
  %48 = or i32 %47, %45
  %49 = load ptr, ptr %36, align 4
  %50 = getelementptr i8, ptr %49, i32 %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gp100_gr_zbc_clear_depth(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = add i32 %1, -1
  %6 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 10, i32 %1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = shl i32 %5, 2
  %11 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 10, i32 %1, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = add i32 %10, 4292880
  %16 = getelementptr i8, ptr %14, i32 %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %12) #2, !srcloc !9
  br label %17

17:                                               ; preds = %9, %2
  %18 = sdiv i32 %5, 4
  %19 = shl nsw i32 %18, 2
  %20 = add i32 %19, 4292940
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 %20
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !11
  %25 = mul i32 %18, 4
  %26 = sub i32 %5, %25
  %27 = mul nsw i32 %26, 7
  %28 = shl nuw nsw i32 127, %27
  %29 = xor i32 %28, -1
  %30 = and i32 %24, %29
  %31 = load i32, ptr %6, align 4
  %32 = shl i32 %31, %27
  %33 = or i32 %32, %30
  %34 = load ptr, ptr %21, align 4
  %35 = getelementptr i8, ptr %34, i32 %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gp100_gr_init_shader_exceptions(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = shl i32 %1, 15
  %9 = add i32 %8, 5259264
  %10 = shl i32 %2, 11
  %11 = add i32 %9, %10
  %12 = or i32 %11, 1604
  %13 = getelementptr i8, ptr %7, i32 %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 14680062) #2, !srcloc !9
  %14 = load ptr, ptr %6, align 4
  %15 = or i32 %11, 1612
  %16 = getelementptr i8, ptr %14, i32 %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 261) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gp100_gr_init_fecs_exceptions(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4234276
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 983042) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gp100_gr_init_rop_active_fbps(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 1179756
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !11
  %8 = and i32 %7, 15
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 4229200
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !11
  %12 = and i32 %11, -16
  %13 = or i32 %12, %8
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr i8, ptr %14, i32 4229200
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #2, !srcloc !9
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr i8, ptr %16, i32 4229464
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !11
  %19 = and i32 %18, -16
  %20 = or i32 %19, %8
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr i8, ptr %21, i32 4229464
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gp100_gr_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @gf100_gr_new_(ptr noundef nonnull @gp100_gr_fwif, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #2
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

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
declare dso_local void @gm200_gr_init_gpc_mmu(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_gr_init_vsc_stream_master(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf117_gr_init_zcull(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_gr_init_num_active_ltcs(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_gr_init_ds_hww_esr_2(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_gr_init_sked_hww_esr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_419cc0(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gp100_gr_init_419c9c(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4299932
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !11
  %8 = or i32 %7, 65536
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 4299932
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #2, !srcloc !9
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 4299932
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !11
  %14 = or i32 %13, 131072
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr i8, ptr %15, i32 4299932
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #2, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_gr_init_ppc_exceptions(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_tex_hww_esr(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_gr_init_504430(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_trap_mp(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_gr_rops(ptr noundef) #1

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
!8 = !{i64 2151503947}
!9 = !{i64 3962854}
!10 = !{i64 3963272}
!11 = !{i64 2151502725}
