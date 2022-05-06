; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf117.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf117.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gf100_gr_init = type { i32, i8, i32, i32 }
%struct.gf100_gr_pack = type { ptr, i32 }
%struct.gf100_grctx_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.gf100_gr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr }
%struct.anon.0 = type { ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }

@gf119_grctx_init_crstr_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf108_grctx_init_gpm_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_grctx_init_gcc_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf117_grctx_pack_gpc_1 = dso_local constant [4 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf119_grctx_init_crstr_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf108_grctx_init_gpm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_gcc_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], align 4
@gf117_grctx_init_pe_0 = dso_local constant [4 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4298824, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4298852, i8 1, i32 4, i32 297 }, %struct.gf100_gr_init { i32 4298888, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf117_grctx_init_wwdx_0 = dso_local constant [10 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4308736, i8 1, i32 4, i32 172066848 }, %struct.gf100_gr_init { i32 4308740, i8 1, i32 4, i32 102793446 }, %struct.gf100_gr_init { i32 4308744, i8 1, i32 4, i32 33790116 }, %struct.gf100_gr_init { i32 4308748, i8 1, i32 4, i32 241340514 }, %struct.gf100_gr_init { i32 4308752, i8 1, i32 4, i32 172066848 }, %struct.gf100_gr_init { i32 4308756, i8 1, i32 4, i32 230 }, %struct.gf100_gr_init { i32 4308944, i8 1, i32 4, i32 9437443 }, %struct.gf100_gr_init { i32 4308960, i8 1, i32 4, i32 4194305 }, %struct.gf100_gr_init { i32 4308964, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf117_grctx_pack_hub = internal constant [10 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf100_grctx_init_main_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_grctx_init_fe_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_pri_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_memfmt_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf117_grctx_init_ds_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf117_grctx_init_pd_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_rstr2d_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_scc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_grctx_init_be_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], align 4
@gf117_grctx_pack_gpc_0 = internal constant [6 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf100_grctx_init_gpc_unk_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_grctx_init_prop_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_grctx_init_gpc_unk_1, i32 0 }, %struct.gf100_gr_pack { ptr @gf117_grctx_init_setup_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_zcull_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], align 4
@gf100_grctx_pack_zcull = external dso_local constant [0 x %struct.gf100_gr_pack], align 4
@gf117_grctx_pack_tpc = internal constant [6 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf117_grctx_init_pe_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf117_grctx_init_tex_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf117_grctx_init_mpc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf104_grctx_init_l1c_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_grctx_init_sm_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], align 4
@gf117_grctx_pack_ppc = internal constant [4 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf117_grctx_init_pes_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf117_grctx_init_cbm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf117_grctx_init_wwdx_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], align 4
@gf119_grctx_pack_icmd = external dso_local constant [0 x %struct.gf100_gr_pack], align 4
@gf119_grctx_pack_mthd = external dso_local constant [0 x %struct.gf100_gr_pack], align 4
@gf117_grctx = dso_local local_unnamed_addr constant %struct.gf100_grctx_func { ptr null, ptr @gf100_grctx_generate_main, ptr @gk104_grctx_generate_unkn, ptr @gf117_grctx_pack_hub, ptr @gf117_grctx_pack_gpc_0, ptr @gf117_grctx_pack_gpc_1, ptr @gf100_grctx_pack_zcull, ptr @gf117_grctx_pack_tpc, ptr @gf117_grctx_pack_ppc, ptr @gf119_grctx_pack_icmd, ptr @gf119_grctx_pack_mthd, ptr null, ptr @gf100_grctx_generate_bundle, i32 6144, i32 0, i32 0, ptr @gf100_grctx_generate_pagepool, i32 32768, ptr @gf117_grctx_generate_attrib, i32 804, i32 536, i32 2047, i32 804, i32 0, ptr null, ptr @gf100_grctx_generate_sm_id, ptr @gf100_grctx_generate_tpc_nr, i8 0, ptr @gf100_grctx_generate_r4060a8, ptr @gf117_grctx_generate_rop_mapping, ptr @gf100_grctx_generate_alpha_beta_tables, ptr @gf100_grctx_generate_max_ways_evict, ptr @gf117_grctx_generate_dist_skip_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gf100_grctx_generate_r419cb8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@gf100_grctx_init_main_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf119_grctx_init_fe_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_grctx_init_pri_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_grctx_init_memfmt_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf117_grctx_init_ds_0 = internal constant [9 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4216832, i8 1, i32 4, i32 260047039 }, %struct.gf100_gr_init { i32 4216880, i8 1, i32 4, i32 35128100 }, %struct.gf100_gr_init { i32 4216884, i8 1, i32 4, i32 134217728 }, %struct.gf100_gr_init { i32 4216888, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4216916, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4216944, i8 4, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4217344, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4217368, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf117_grctx_init_pd_0 = internal constant [9 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4218912, i8 1, i32 4, i32 66497 }, %struct.gf100_gr_init { i32 4218920, i8 4, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4220072, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4220076, i8 1, i32 4, i32 16383 }, %struct.gf100_gr_init { i32 4220084, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4220096, i8 1, i32 4, i32 -2145779592 }, %struct.gf100_gr_init { i32 4220100, i8 1, i32 4, i32 13238271 }, %struct.gf100_gr_init { i32 4220112, i8 8, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_grctx_init_rstr2d_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_grctx_init_scc_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf119_grctx_init_be_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_grctx_init_gpc_unk_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf119_grctx_init_prop_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf119_grctx_init_gpc_unk_1 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf117_grctx_init_setup_0 = internal constant [9 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4294656, i8 1, i32 4, i32 1879475722 }, %struct.gf100_gr_init { i32 4294664, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4294696, i8 1, i32 4, i32 33858 }, %struct.gf100_gr_init { i32 4294704, i8 1, i32 4, i32 268435457 }, %struct.gf100_gr_init { i32 4294872, i8 1, i32 4, i32 8 }, %struct.gf100_gr_init { i32 4294880, i8 1, i32 4, i32 16777216 }, %struct.gf100_gr_init { i32 4294888, i8 5, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4294908, i8 1, i32 4, i32 537919512 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_grctx_init_zcull_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf117_grctx_init_tex_0 = internal constant [10 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299264, i8 1, i32 4, i32 496 }, %struct.gf100_gr_init { i32 4299268, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4299272, i8 1, i32 4, i32 35 }, %struct.gf100_gr_init { i32 4299276, i8 1, i32 4, i32 131072 }, %struct.gf100_gr_init { i32 4299280, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299284, i8 1, i32 4, i32 512 }, %struct.gf100_gr_init { i32 4299292, i8 1, i32 4, i32 32768 }, %struct.gf100_gr_init { i32 4299296, i8 1, i32 4, i32 2048 }, %struct.gf100_gr_init { i32 4299460, i8 1, i32 4, i32 1569856 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf117_grctx_init_mpc_0 = internal constant [7 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299776, i8 1, i32 4, i32 10 }, %struct.gf100_gr_init { i32 4299780, i8 1, i32 4, i32 6 }, %struct.gf100_gr_init { i32 4299784, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 4299808, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299812, i8 1, i32 4, i32 541200 }, %struct.gf100_gr_init { i32 4299816, i8 1, i32 4, i32 1056698302 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf104_grctx_init_l1c_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf119_grctx_init_sm_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf117_grctx_init_pes_0 = internal constant [2 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4308516, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf117_grctx_init_cbm_0 = internal constant [4 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4308672, i8 1, i32 4, i32 303562752 }, %struct.gf100_gr_init { i32 4308676, i8 1, i32 4, i32 16383 }, %struct.gf100_gr_init { i32 4308708, i8 1, i32 4, i32 52691480 }, %struct.gf100_gr_init zeroinitializer], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf117_grctx_generate_dist_skip_table(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4220112
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #4, !srcloc !9
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 4220116
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #4, !srcloc !9
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 4220120
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #4, !srcloc !9
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 4220124
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #4, !srcloc !9
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %13, i32 4220128
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #4, !srcloc !9
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr i8, ptr %15, i32 4220132
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #4, !srcloc !9
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr i8, ptr %17, i32 4220136
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #4, !srcloc !9
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr i8, ptr %19, i32 4220140
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 0) #4, !srcloc !9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf117_grctx_generate_rop_mapping(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [6 x i32], align 4
  %3 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i32 24, i1 false)
  br label %5

5:                                                ; preds = %5, %1
  %6 = phi i32 [ 0, %1 ], [ %20, %5 ]
  %7 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 24, i32 %6
  %8 = load i8, ptr %7, align 1
  %9 = and i8 %8, 7
  %10 = zext i8 %9 to i32
  %11 = freeze i32 %6
  %12 = udiv i32 %11, 6
  %13 = mul i32 %12, 6
  %14 = sub i32 %11, %13
  %15 = mul nuw nsw i32 %14, 5
  %16 = shl nuw nsw i32 %10, %15
  %17 = getelementptr [6 x i32], ptr %2, i32 0, i32 %12
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %16, %18
  store i32 %19, ptr %17, align 4
  %20 = add nuw nsw i32 %6, 1
  %21 = icmp eq i32 %20, 32
  br i1 %21, label %22, label %5

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 16
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %28, %22
  %29 = phi i8 [ %31, %28 ], [ %24, %22 ]
  %30 = phi i8 [ %32, %28 ], [ 0, %22 ]
  %31 = shl i8 %29, 1
  %32 = add i8 %30, 1
  %33 = zext i8 %31 to i32
  %34 = and i32 %33, 16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %28, label %36

36:                                               ; preds = %28
  %37 = zext i8 %32 to i32
  %38 = shl nuw nsw i32 %37, 21
  br label %39

39:                                               ; preds = %36, %22
  %40 = phi i32 [ 0, %22 ], [ %38, %36 ]
  %41 = phi i8 [ %24, %22 ], [ %31, %36 ]
  %42 = phi i32 [ %25, %22 ], [ %33, %36 ]
  %43 = urem i8 32, %41
  %44 = zext i8 %43 to i32
  %45 = trunc i32 %42 to i8
  %46 = urem i8 64, %45
  %47 = zext i8 %46 to i32
  %48 = trunc i32 %42 to i8
  %49 = urem i8 -128, %48
  %50 = zext i8 %49 to i32
  %51 = shl nuw nsw i32 %50, 5
  %52 = or i32 %51, %47
  %53 = trunc i32 %42 to i16
  %54 = urem i16 256, %53
  %55 = zext i16 %54 to i32
  %56 = shl nuw nsw i32 %55, 10
  %57 = or i32 %56, %52
  %58 = trunc i32 %42 to i16
  %59 = urem i16 512, %58
  %60 = zext i16 %59 to i32
  %61 = shl nuw nsw i32 %60, 15
  %62 = or i32 %61, %57
  %63 = trunc i32 %42 to i16
  %64 = urem i16 1024, %63
  %65 = zext i16 %64 to i32
  %66 = shl nuw nsw i32 %65, 20
  %67 = or i32 %66, %62
  %68 = trunc i32 %42 to i16
  %69 = urem i16 2048, %68
  %70 = zext i16 %69 to i32
  %71 = shl i32 %70, 25
  %72 = or i32 %71, %67
  %73 = shl nuw nsw i32 %25, 8
  %74 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 23
  %75 = load i8, ptr %74, align 2
  %76 = zext i8 %75 to i32
  %77 = or i32 %73, %76
  %78 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr i8, ptr %79, i32 4295608
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %77) #4, !srcloc !9
  %81 = load i32, ptr %2, align 4
  %82 = load ptr, ptr %78, align 4
  %83 = getelementptr i8, ptr %82, i32 4295432
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %81) #4, !srcloc !9
  %84 = getelementptr inbounds [6 x i32], ptr %2, i32 0, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = load ptr, ptr %78, align 4
  %87 = getelementptr i8, ptr %86, i32 4295436
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %85) #4, !srcloc !9
  %88 = getelementptr inbounds [6 x i32], ptr %2, i32 0, i32 2
  %89 = load i32, ptr %88, align 4
  %90 = load ptr, ptr %78, align 4
  %91 = getelementptr i8, ptr %90, i32 4295440
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %89) #4, !srcloc !9
  %92 = getelementptr inbounds [6 x i32], ptr %2, i32 0, i32 3
  %93 = load i32, ptr %92, align 4
  %94 = load ptr, ptr %78, align 4
  %95 = getelementptr i8, ptr %94, i32 4295444
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %93) #4, !srcloc !9
  %96 = getelementptr inbounds [6 x i32], ptr %2, i32 0, i32 4
  %97 = load i32, ptr %96, align 4
  %98 = load ptr, ptr %78, align 4
  %99 = getelementptr i8, ptr %98, i32 4295448
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %97) #4, !srcloc !9
  %100 = getelementptr inbounds [6 x i32], ptr %2, i32 0, i32 5
  %101 = load i32, ptr %100, align 4
  %102 = load ptr, ptr %78, align 4
  %103 = getelementptr i8, ptr %102, i32 4295452
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %101) #4, !srcloc !9
  %104 = shl nuw nsw i32 %42, 16
  %105 = shl nuw nsw i32 %44, 24
  %106 = load i8, ptr %23, align 1
  %107 = zext i8 %106 to i32
  %108 = shl nuw nsw i32 %107, 8
  %109 = load i8, ptr %74, align 2
  %110 = zext i8 %109 to i32
  %111 = or i32 %104, %40
  %112 = or i32 %111, %105
  %113 = or i32 %112, %110
  %114 = or i32 %113, %108
  %115 = load ptr, ptr %78, align 4
  %116 = getelementptr i8, ptr %115, i32 4308944
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %114) #4, !srcloc !9
  %117 = load ptr, ptr %78, align 4
  %118 = getelementptr i8, ptr %117, i32 4308964
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %72) #4, !srcloc !9
  %119 = load ptr, ptr %78, align 4
  %120 = getelementptr i8, ptr %119, i32 4308736
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %81) #4, !srcloc !9
  %121 = load ptr, ptr %78, align 4
  %122 = getelementptr i8, ptr %121, i32 4308740
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %85) #4, !srcloc !9
  %123 = load ptr, ptr %78, align 4
  %124 = getelementptr i8, ptr %123, i32 4308744
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 %89) #4, !srcloc !9
  %125 = load ptr, ptr %78, align 4
  %126 = getelementptr i8, ptr %125, i32 4308748
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 %93) #4, !srcloc !9
  %127 = load ptr, ptr %78, align 4
  %128 = getelementptr i8, ptr %127, i32 4308752
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %97) #4, !srcloc !9
  %129 = load ptr, ptr %78, align 4
  %130 = getelementptr i8, ptr %129, i32 4308756
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %101) #4, !srcloc !9
  %131 = load i8, ptr %23, align 1
  %132 = zext i8 %131 to i32
  %133 = shl nuw nsw i32 %132, 8
  %134 = load i8, ptr %74, align 2
  %135 = zext i8 %134 to i32
  %136 = or i32 %133, %135
  %137 = load ptr, ptr %78, align 4
  %138 = getelementptr i8, ptr %137, i32 4225212
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 %136) #4, !srcloc !9
  %139 = load i32, ptr %2, align 4
  %140 = load ptr, ptr %78, align 4
  %141 = getelementptr i8, ptr %140, i32 4225036
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 %139) #4, !srcloc !9
  %142 = load i32, ptr %84, align 4
  %143 = load ptr, ptr %78, align 4
  %144 = getelementptr i8, ptr %143, i32 4225040
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %142) #4, !srcloc !9
  %145 = load i32, ptr %88, align 4
  %146 = load ptr, ptr %78, align 4
  %147 = getelementptr i8, ptr %146, i32 4225044
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 %145) #4, !srcloc !9
  %148 = load i32, ptr %92, align 4
  %149 = load ptr, ptr %78, align 4
  %150 = getelementptr i8, ptr %149, i32 4225048
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 %148) #4, !srcloc !9
  %151 = load ptr, ptr %78, align 4
  %152 = getelementptr i8, ptr %151, i32 4225052
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 %97) #4, !srcloc !9
  %153 = load ptr, ptr %78, align 4
  %154 = getelementptr i8, ptr %153, i32 4225056
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 %101) #4, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf117_grctx_generate_attrib(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gf100_gr_func, ptr %3, i32 0, i32 36
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 22
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 20
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 19
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 21
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %11
  %15 = shl i32 %14, 5
  %16 = getelementptr inbounds %struct.gf100_gr, ptr %2, i32 0, i32 16
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = mul i32 %15, %18
  %20 = tail call i32 @gf100_grctx_mmio_data(ptr noundef %0, i32 noundef %19, i32 noundef 4096, i1 noundef zeroext false) #4
  %21 = load i32, ptr %10, align 4
  %22 = load i8, ptr %16, align 1
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4294672, i32 noundef -2147483648, i32 noundef 12, i32 noundef %20) #4
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4298824, i32 noundef 268435456, i32 noundef 12, i32 noundef %20) #4
  %23 = shl i32 %9, 16
  %24 = or i32 %23, %7
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4216880, i32 noundef %24, i32 noundef 0, i32 noundef -1) #4
  %25 = shl i32 %7, 14
  %26 = or i32 %25, 65535
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4220100, i32 noundef %26, i32 noundef 0, i32 noundef -1) #4
  %27 = getelementptr inbounds %struct.gf100_gr, ptr %2, i32 0, i32 13
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %98, label %30

30:                                               ; preds = %1
  %31 = zext i8 %22 to i32
  %32 = mul i32 %21, %31
  %33 = shl i32 %7, 16
  br label %34

34:                                               ; preds = %91, %30
  %35 = phi i8 [ %28, %30 ], [ %92, %91 ]
  %36 = phi i32 [ 0, %30 ], [ %95, %91 ]
  %37 = phi i32 [ %32, %30 ], [ %94, %91 ]
  %38 = phi i32 [ 0, %30 ], [ %93, %91 ]
  %39 = getelementptr %struct.gf100_gr, ptr %2, i32 0, i32 17, i32 %36
  %40 = load i8, ptr %39, align 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %91, label %42

42:                                               ; preds = %34
  %43 = getelementptr %struct.gf100_gr, ptr %2, i32 0, i32 18, i32 %36
  %44 = shl i32 %36, 15
  %45 = add nuw nsw i32 %44, 5255168
  br label %46

46:                                               ; preds = %82, %42
  %47 = phi i8 [ %40, %42 ], [ %83, %82 ]
  %48 = phi i32 [ 0, %42 ], [ %86, %82 ]
  %49 = phi i32 [ %37, %42 ], [ %85, %82 ]
  %50 = phi i32 [ %38, %42 ], [ %84, %82 ]
  %51 = load i8, ptr %43, align 1
  %52 = zext i8 %51 to i32
  %53 = shl nuw i32 1, %48
  %54 = and i32 %53, %52
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %82, label %56

56:                                               ; preds = %46
  %57 = shl i32 %48, 9
  %58 = add nuw nsw i32 %45, %57
  %59 = getelementptr %struct.gf100_gr, ptr %2, i32 0, i32 20, i32 %36, i32 %48
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = or i32 %58, 192
  %63 = mul i32 %23, %61
  %64 = or i32 %63, 268435456
  %65 = add i32 %50, 1
  %66 = or i32 %64, %65
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef %62, i32 noundef %66, i32 noundef -1, i32 noundef -1) #4
  %67 = or i32 %64, %50
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef %62, i32 noundef %67, i32 noundef 0, i32 noundef -1) #4
  %68 = load i32, ptr %10, align 4
  %69 = load i8, ptr %59, align 1
  %70 = zext i8 %69 to i32
  %71 = mul i32 %68, %70
  %72 = add i32 %71, %50
  %73 = or i32 %58, 228
  %74 = mul i32 %33, %61
  %75 = or i32 %74, %49
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef %73, i32 noundef %75, i32 noundef 0, i32 noundef -1) #4
  %76 = load i32, ptr %12, align 4
  %77 = load i8, ptr %59, align 1
  %78 = zext i8 %77 to i32
  %79 = mul i32 %76, %78
  %80 = add i32 %79, %49
  %81 = load i8, ptr %39, align 1
  br label %82

82:                                               ; preds = %56, %46
  %83 = phi i8 [ %81, %56 ], [ %47, %46 ]
  %84 = phi i32 [ %72, %56 ], [ %50, %46 ]
  %85 = phi i32 [ %80, %56 ], [ %49, %46 ]
  %86 = add nuw nsw i32 %48, 1
  %87 = zext i8 %83 to i32
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %46, label %89

89:                                               ; preds = %82
  %90 = load i8, ptr %27, align 1
  br label %91

91:                                               ; preds = %89, %34
  %92 = phi i8 [ %35, %34 ], [ %90, %89 ]
  %93 = phi i32 [ %38, %34 ], [ %84, %89 ]
  %94 = phi i32 [ %37, %34 ], [ %85, %89 ]
  %95 = add nuw nsw i32 %36, 1
  %96 = zext i8 %92 to i32
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %34, label %98

98:                                               ; preds = %91, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_grctx_mmio_data(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_mmio_item(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_main(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_unkn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_bundle(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_pagepool(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_sm_id(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_tpc_nr(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_r4060a8(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_alpha_beta_tables(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_max_ways_evict(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_r419cb8(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }

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
!8 = !{i64 2151518518}
!9 = !{i64 3977425}
