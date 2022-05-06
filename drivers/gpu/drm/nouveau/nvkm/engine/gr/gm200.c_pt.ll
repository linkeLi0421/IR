; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_acr_lsf_func = type { i32, i32, ptr, ptr, ptr, i64, ptr, ptr }
%struct.gf100_gr_fwif = type { i32, ptr, ptr, ptr, ptr }
%struct.gf100_grctx_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gf100_gr_func_zbc = type { ptr, ptr, ptr, ptr }
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
%struct.flcn_bl_dmem_desc_v1 = type <{ [4 x i32], [4 x i32], i32, i64, i32, i32, i32, i32, i32, i64, i32 }>
%struct.nvkm_acr_lsfw = type { ptr, ptr, i32, %struct.list_head, %struct.nvkm_blob, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.144, i32 }
%struct.anon.144 = type { i32, i32, i32 }
%struct.nvkm_acr = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, ptr, i64, i64, i64, ptr, ptr, i8, ptr, i8, i64 }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.nvkm_memory_ptrs = type { ptr, ptr }

@.str = private unnamed_addr constant [26 x i8] c"%s: firmware unavailable\0A\00", align 1
@gm200_gr_gpccs_acr = dso_local constant %struct.nvkm_acr_lsf_func { i32 8, i32 76, ptr @gm200_gr_acr_bld_write, ptr @gm200_gr_acr_bld_patch, ptr null, i64 0, ptr null, ptr null }, align 8
@gm200_gr_fecs_acr = dso_local constant %struct.nvkm_acr_lsf_func { i32 0, i32 76, ptr @gm200_gr_acr_bld_write, ptr @gm200_gr_acr_bld_patch, ptr null, i64 0, ptr null, ptr null }, align 8
@gm200_gr_tile_map_4_16 = internal unnamed_addr constant [16 x i8] c"\00\01\02\03\02\03\00\01\03\00\01\02\01\02\03\00", align 1
@gm200_gr_tile_map_6_24 = internal unnamed_addr constant [24 x i8] c"\00\01\02\03\04\05\03\04\05\00\01\02\00\01\02\03\04\05\03\04\05\00\01\02", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"gr/fecs_\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"gr/gpccs_\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"gr/\00", align 1
@__UNIQUE_ID_firmware252 = internal constant [37 x i8] c"firmware=nvidia/gm200/gr/fecs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware253 = internal constant [39 x i8] c"firmware=nvidia/gm200/gr/fecs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware254 = internal constant [39 x i8] c"firmware=nvidia/gm200/gr/fecs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware255 = internal constant [38 x i8] c"firmware=nvidia/gm200/gr/fecs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware256 = internal constant [38 x i8] c"firmware=nvidia/gm200/gr/gpccs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware257 = internal constant [40 x i8] c"firmware=nvidia/gm200/gr/gpccs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware258 = internal constant [40 x i8] c"firmware=nvidia/gm200/gr/gpccs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware259 = internal constant [39 x i8] c"firmware=nvidia/gm200/gr/gpccs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware260 = internal constant [36 x i8] c"firmware=nvidia/gm200/gr/sw_ctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware261 = internal constant [39 x i8] c"firmware=nvidia/gm200/gr/sw_nonctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware262 = internal constant [44 x i8] c"firmware=nvidia/gm200/gr/sw_bundle_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware263 = internal constant [44 x i8] c"firmware=nvidia/gm200/gr/sw_method_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware264 = internal constant [37 x i8] c"firmware=nvidia/gm204/gr/fecs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware265 = internal constant [39 x i8] c"firmware=nvidia/gm204/gr/fecs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware266 = internal constant [39 x i8] c"firmware=nvidia/gm204/gr/fecs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware267 = internal constant [38 x i8] c"firmware=nvidia/gm204/gr/fecs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware268 = internal constant [38 x i8] c"firmware=nvidia/gm204/gr/gpccs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware269 = internal constant [40 x i8] c"firmware=nvidia/gm204/gr/gpccs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware270 = internal constant [40 x i8] c"firmware=nvidia/gm204/gr/gpccs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware271 = internal constant [39 x i8] c"firmware=nvidia/gm204/gr/gpccs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware272 = internal constant [36 x i8] c"firmware=nvidia/gm204/gr/sw_ctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware273 = internal constant [39 x i8] c"firmware=nvidia/gm204/gr/sw_nonctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware274 = internal constant [44 x i8] c"firmware=nvidia/gm204/gr/sw_bundle_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware275 = internal constant [44 x i8] c"firmware=nvidia/gm204/gr/sw_method_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware276 = internal constant [37 x i8] c"firmware=nvidia/gm206/gr/fecs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware277 = internal constant [39 x i8] c"firmware=nvidia/gm206/gr/fecs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware278 = internal constant [39 x i8] c"firmware=nvidia/gm206/gr/fecs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware279 = internal constant [38 x i8] c"firmware=nvidia/gm206/gr/fecs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware280 = internal constant [38 x i8] c"firmware=nvidia/gm206/gr/gpccs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware281 = internal constant [40 x i8] c"firmware=nvidia/gm206/gr/gpccs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware282 = internal constant [40 x i8] c"firmware=nvidia/gm206/gr/gpccs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware283 = internal constant [39 x i8] c"firmware=nvidia/gm206/gr/gpccs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware284 = internal constant [36 x i8] c"firmware=nvidia/gm206/gr/sw_ctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware285 = internal constant [39 x i8] c"firmware=nvidia/gm206/gr/sw_nonctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware286 = internal constant [44 x i8] c"firmware=nvidia/gm206/gr/sw_bundle_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware287 = internal constant [44 x i8] c"firmware=nvidia/gm206/gr/sw_method_init.bin\00", section ".modinfo", align 1
@gm200_gr_fwif = internal constant [3 x %struct.gf100_gr_fwif] [%struct.gf100_gr_fwif { i32 0, ptr @gm200_gr_load, ptr @gm200_gr, ptr @gm200_gr_fecs_acr, ptr @gm200_gr_gpccs_acr }, %struct.gf100_gr_fwif { i32 -1, ptr @gm200_gr_nofw, ptr null, ptr null, ptr null }, %struct.gf100_gr_fwif zeroinitializer], align 4
@gm200_grctx = external dso_local constant %struct.gf100_grctx_func, align 4
@gf100_gr_zbc = external dso_local constant %struct.gf100_gr_func_zbc, align 4
@gf100_fermi = external dso_local constant %struct.nvkm_object_func, align 4
@gm200_gr = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [5 x %struct.nvkm_sclass] } { ptr @gm200_gr_oneinit_tiles, ptr @gm200_gr_oneinit_sm_id, ptr @gf100_gr_init, ptr null, ptr @gm200_gr_init_gpc_mmu, ptr null, ptr @gm107_gr_init_bios, ptr @gk104_gr_init_vsc_stream_master, ptr @gf117_gr_init_zcull, ptr @gm200_gr_init_num_active_ltcs, ptr @gm200_gr_init_rop_active_fbps, ptr null, ptr null, ptr null, ptr @gf100_gr_init_fecs_exceptions, ptr @gm200_gr_init_ds_hww_esr_2, ptr null, ptr @gk104_gr_init_sked_hww_esr, ptr @gf100_gr_init_419cc0, ptr null, ptr null, ptr @gk104_gr_init_ppc_exceptions, ptr @gf100_gr_init_tex_hww_esr, ptr @gm107_gr_init_504430, ptr @gm107_gr_init_shader_exceptions, ptr @gm107_gr_init_400054, ptr null, ptr @gf100_gr_trap_mp, ptr null, ptr null, %struct.anon zeroinitializer, %struct.anon.0 zeroinitializer, ptr @gm200_gr_rops, i32 0, i32 4, i32 2, ptr @gm200_grctx, ptr null, ptr @gf100_gr_zbc, [5 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 36909, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 41280, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 45463, ptr @gf100_fermi, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 45504, ptr null, ptr null }, %struct.nvkm_sclass zeroinitializer] }, align 4
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_firmware252, ptr @__UNIQUE_ID_firmware253, ptr @__UNIQUE_ID_firmware254, ptr @__UNIQUE_ID_firmware255, ptr @__UNIQUE_ID_firmware256, ptr @__UNIQUE_ID_firmware257, ptr @__UNIQUE_ID_firmware258, ptr @__UNIQUE_ID_firmware259, ptr @__UNIQUE_ID_firmware260, ptr @__UNIQUE_ID_firmware261, ptr @__UNIQUE_ID_firmware262, ptr @__UNIQUE_ID_firmware263, ptr @__UNIQUE_ID_firmware264, ptr @__UNIQUE_ID_firmware265, ptr @__UNIQUE_ID_firmware266, ptr @__UNIQUE_ID_firmware267, ptr @__UNIQUE_ID_firmware268, ptr @__UNIQUE_ID_firmware269, ptr @__UNIQUE_ID_firmware270, ptr @__UNIQUE_ID_firmware271, ptr @__UNIQUE_ID_firmware272, ptr @__UNIQUE_ID_firmware273, ptr @__UNIQUE_ID_firmware274, ptr @__UNIQUE_ID_firmware275, ptr @__UNIQUE_ID_firmware276, ptr @__UNIQUE_ID_firmware277, ptr @__UNIQUE_ID_firmware278, ptr @__UNIQUE_ID_firmware279, ptr @__UNIQUE_ID_firmware280, ptr @__UNIQUE_ID_firmware281, ptr @__UNIQUE_ID_firmware282, ptr @__UNIQUE_ID_firmware283, ptr @__UNIQUE_ID_firmware284, ptr @__UNIQUE_ID_firmware285, ptr @__UNIQUE_ID_firmware286, ptr @__UNIQUE_ID_firmware287], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm200_gr_nofw(ptr noundef %0, i32 %1, ptr nocapture readnone %2) #0 {
  %4 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %11, ptr noundef nonnull @.str, ptr noundef %12) #6
  br label %13

13:                                               ; preds = %7, %3
  ret i32 -19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gm200_gr_acr_bld_write(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.flcn_bl_dmem_desc_v1, align 1
  %5 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 17, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 9
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, %6
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 11
  %12 = load i32, ptr %11, align 4
  %13 = zext i32 %12 to i64
  %14 = add nuw nsw i64 %10, %13
  %15 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 13
  %16 = load i32, ptr %15, align 4
  %17 = zext i32 %16 to i64
  %18 = add nuw nsw i64 %17, %10
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %4) #7
  %19 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %4, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %4, i8 0, i64 36, i1 false)
  store i64 %14, ptr %19, align 1
  %20 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %4, i32 0, i32 4
  store i32 %12, ptr %20, align 1
  %21 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %4, i32 0, i32 5
  %22 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 12
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr %21, align 1
  %24 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %4, i32 0, i32 6
  store i32 0, ptr %24, align 1
  %25 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %4, i32 0, i32 7
  store i32 0, ptr %25, align 1
  %26 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %4, i32 0, i32 8
  %27 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 10
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %26, align 1
  %29 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %4, i32 0, i32 9
  store i64 %18, ptr %29, align 1
  %30 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %4, i32 0, i32 10
  %31 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 14
  %32 = load i32, ptr %31, align 4
  store i32 %32, ptr %30, align 1
  %33 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 7
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.nvkm_memory, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = zext i32 %1 to i64
  tail call void %38(ptr noundef %34, i64 noundef %39, i32 noundef 0) #7
  br label %40

40:                                               ; preds = %40, %3
  %41 = phi i32 [ 18, %3 ], [ %47, %40 ]
  %42 = phi i32 [ %1, %3 ], [ %44, %40 ]
  %43 = phi ptr [ %4, %3 ], [ %45, %40 ]
  %44 = add i32 %42, 4
  %45 = getelementptr i32, ptr %43, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = add nsw i32 %41, -1
  %48 = load ptr, ptr %33, align 8
  %49 = getelementptr inbounds %struct.nvkm_memory, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %50, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = zext i32 %44 to i64
  tail call void %52(ptr noundef %48, i64 noundef %53, i32 noundef %46) #7
  %54 = icmp eq i32 %47, 0
  br i1 %54, label %55, label %40

55:                                               ; preds = %40
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gm200_gr_acr_bld_patch(ptr noundef %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.flcn_bl_dmem_desc_v1, align 1
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(76) %4, i8 0, i32 76, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 7
  br label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %4, %3 ], [ %17, %6 ]
  %8 = phi i32 [ 19, %3 ], [ %10, %6 ]
  %9 = phi i32 [ %1, %3 ], [ %18, %6 ]
  %10 = add nsw i32 %8, -1
  %11 = load ptr, ptr %5, align 8
  %12 = getelementptr inbounds %struct.nvkm_memory, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = zext i32 %9 to i64
  %16 = tail call i32 %14(ptr noundef %11, i64 noundef %15) #7
  %17 = getelementptr i32, ptr %7, i32 1
  store i32 %16, ptr %7, align 4
  %18 = add i32 %9, 4
  %19 = icmp eq i32 %10, 0
  br i1 %19, label %20, label %6

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %4, i32 0, i32 3
  %22 = load i64, ptr %21, align 1
  %23 = add i64 %22, %2
  store i64 %23, ptr %21, align 1
  %24 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %4, i32 0, i32 9
  %25 = load i64, ptr %24, align 1
  %26 = add i64 %25, %2
  store i64 %26, ptr %24, align 1
  br label %27

27:                                               ; preds = %27, %20
  %28 = phi ptr [ %4, %20 ], [ %38, %27 ]
  %29 = phi i32 [ 19, %20 ], [ %31, %27 ]
  %30 = phi i32 [ %1, %20 ], [ %40, %27 ]
  %31 = add nsw i32 %29, -1
  %32 = load ptr, ptr %5, align 8
  %33 = getelementptr inbounds %struct.nvkm_memory, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = zext i32 %30 to i64
  %38 = getelementptr i32, ptr %28, i32 1
  %39 = load i32, ptr %28, align 4
  tail call void %36(ptr noundef %32, i64 noundef %37, i32 noundef %39) #7
  %40 = add i32 %30, 4
  %41 = icmp eq i32 %31, 0
  br i1 %41, label %42, label %27

42:                                               ; preds = %27
  %43 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1
  call void @flcn_bl_dmem_desc_v1_dump(ptr noundef %43, ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm200_gr_rops(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 1179756
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gm200_gr_init_ds_hww_esr_2(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4216904
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 -1073741824) #7, !srcloc !12
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 4216908
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %10 = or i32 %9, 1
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 4216908
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #7, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gm200_gr_init_num_active_ltcs(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 1050624
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 4294828
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #7, !srcloc !12
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr i8, ptr %10, i32 1050628
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %13, i32 4293436
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #7, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gm200_gr_init_gpc_mmu(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 1051776
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %8 = and i32 %7, -268427265
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 4294784
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #7, !srcloc !12
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 4294800
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #7, !srcloc !12
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %13, i32 4294804
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #7, !srcloc !12
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr i8, ptr %15, i32 1051848
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr i8, ptr %18, i32 4294836
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #7, !srcloc !12
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr i8, ptr %20, i32 1051852
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr i8, ptr %23, i32 4294840
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #7, !srcloc !12
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr i8, ptr %25, i32 1051844
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %28 = load ptr, ptr %4, align 4
  %29 = getelementptr i8, ptr %28, i32 4294832
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #7, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gm200_gr_oneinit_sm_id(ptr noundef %0) #0 {
  tail call void @gf100_gr_oneinit_sm_id(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_oneinit_sm_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gm200_gr_oneinit_tiles(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 13
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %25 [
    i8 2, label %4
    i8 4, label %11
    i8 6, label %18
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 16
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 8
  br i1 %7, label %8, label %25

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 24
  store i64 282574488404224, ptr %9, align 1
  %10 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 23
  store i8 1, ptr %10, align 2
  br label %26

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 16
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 16
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 24
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %16, ptr noundef nonnull align 1 dereferenceable(16) @gm200_gr_tile_map_4_16, i32 16, i1 false)
  %17 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 23
  store i8 4, ptr %17, align 2
  br label %26

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 16
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, 24
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 24
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(24) %23, ptr noundef nonnull align 1 dereferenceable(24) @gm200_gr_tile_map_6_24, i32 24, i1 false)
  %24 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 23
  store i8 5, ptr %24, align 2
  br label %26

25:                                               ; preds = %18, %11, %4, %1
  tail call void @gf100_gr_oneinit_tiles(ptr noundef %0) #7
  br label %26

26:                                               ; preds = %25, %22, %15, %8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_oneinit_tiles(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm200_gr_load(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1
  %5 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 2
  %6 = getelementptr inbounds %struct.gf100_gr_fwif, ptr %2, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @nvkm_acr_lsfw_load_bl_inst_data_sig(ptr noundef %4, ptr noundef %5, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef %1, ptr noundef %7) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 3
  %12 = getelementptr inbounds %struct.gf100_gr_fwif, ptr %2, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @nvkm_acr_lsfw_load_bl_inst_data_sig(ptr noundef %4, ptr noundef %11, i32 noundef 3, ptr noundef nonnull @.str.2, i32 noundef %1, ptr noundef %13) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 4
  store i8 1, ptr %17, align 4
  %18 = tail call i32 @gk20a_gr_load_sw(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %1) #7
  br label %19

19:                                               ; preds = %16, %10, %3
  %20 = phi i32 [ %18, %16 ], [ %8, %3 ], [ %14, %10 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_acr_lsfw_load_bl_inst_data_sig(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk20a_gr_load_sw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm200_gr_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @gf100_gr_new_(ptr noundef nonnull @gm200_gr_fwif, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #7
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @flcn_bl_dmem_desc_v1_dump(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_init(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_gr_init_bios(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_gr_init_vsc_stream_master(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf117_gr_init_zcull(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gm200_gr_init_rop_active_fbps(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 1179756
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 4229200
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %11 = and i32 %10, -16
  %12 = or i32 %11, %7
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %13, i32 4229200
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #7, !srcloc !12
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr i8, ptr %15, i32 4229464
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %18 = and i32 %17, -16
  %19 = or i32 %18, %7
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr i8, ptr %20, i32 4229464
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #7, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_fecs_exceptions(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_gr_init_sked_hww_esr(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_419cc0(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_gr_init_ppc_exceptions(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_tex_hww_esr(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_gr_init_504430(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_gr_init_shader_exceptions(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_gr_init_400054(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_trap_mp(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind }

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
!8 = !{!"auto-init"}
!9 = !{i64 3967107}
!10 = !{i64 2151506560}
!11 = !{i64 2151507782}
!12 = !{i64 3966689}
