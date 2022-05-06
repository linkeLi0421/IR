; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgm107.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgm107.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gf100_gr_init = type { i32, i8, i32, i32 }
%struct.gf100_gr_pack = type { ptr, i32 }
%struct.gf100_grctx_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gf100_gr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [0 x %struct.nvkm_sclass] }
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

@gm107_grctx_init_gpc_unk_0 = dso_local constant [2 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4293504, i8 1, i32 4, i32 86 }, %struct.gf100_gr_init zeroinitializer], align 4
@gm107_grctx_init_wwdx_0 = dso_local constant [10 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4308736, i8 1, i32 4, i32 172066848 }, %struct.gf100_gr_init { i32 4308740, i8 1, i32 4, i32 102793446 }, %struct.gf100_gr_init { i32 4308744, i8 1, i32 4, i32 33790116 }, %struct.gf100_gr_init { i32 4308748, i8 1, i32 4, i32 241340514 }, %struct.gf100_gr_init { i32 4308752, i8 1, i32 4, i32 172066848 }, %struct.gf100_gr_init { i32 4308756, i8 1, i32 4, i32 230 }, %struct.gf100_gr_init { i32 4308944, i8 1, i32 4, i32 9437443 }, %struct.gf100_gr_init { i32 4308960, i8 1, i32 4, i32 -2147483648 }, %struct.gf100_gr_init { i32 4308964, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gm107_grctx_pack_hub = internal constant [11 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf100_grctx_init_main_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_grctx_init_fe_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk110_grctx_init_pri_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk104_grctx_init_memfmt_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_grctx_init_ds_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk110_grctx_init_cwd_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_grctx_init_pd_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk208_grctx_init_rstr2d_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk104_grctx_init_scc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_grctx_init_be_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], align 4
@gm107_grctx_pack_gpc_0 = internal constant [6 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gm107_grctx_init_gpc_unk_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk208_grctx_init_prop_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_grctx_init_gpc_unk_1, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_grctx_init_setup_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_zcull_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], align 4
@gm107_grctx_pack_gpc_1 = internal constant [5 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gk208_grctx_init_crstr_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk104_grctx_init_gpm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_grctx_init_gpc_unk_2, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_gcc_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], align 4
@gf100_grctx_pack_zcull = external dso_local constant [0 x %struct.gf100_gr_pack], align 4
@gm107_grctx_pack_tpc = internal constant [6 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf117_grctx_init_pe_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_grctx_init_tex_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_grctx_init_mpc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_grctx_init_l1c_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_grctx_init_sm_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], align 4
@gm107_grctx_pack_ppc = internal constant [4 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gk104_grctx_init_pes_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_grctx_init_cbm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_grctx_init_wwdx_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], align 4
@gm107_grctx_pack_icmd = internal constant [2 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gm107_grctx_init_icmd_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], align 4
@gm107_grctx_pack_mthd = internal constant [3 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gm107_grctx_init_b097_0, i32 45207 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_902d_0, i32 36909 }, %struct.gf100_gr_pack zeroinitializer], align 4
@gm107_grctx = dso_local local_unnamed_addr constant %struct.gf100_grctx_func { ptr null, ptr @gf100_grctx_generate_main, ptr @gk104_grctx_generate_unkn, ptr @gm107_grctx_pack_hub, ptr @gm107_grctx_pack_gpc_0, ptr @gm107_grctx_pack_gpc_1, ptr @gf100_grctx_pack_zcull, ptr @gm107_grctx_pack_tpc, ptr @gm107_grctx_pack_ppc, ptr @gm107_grctx_pack_icmd, ptr @gm107_grctx_pack_mthd, ptr null, ptr @gm107_grctx_generate_bundle, i32 12288, i32 384, i32 704, ptr @gm107_grctx_generate_pagepool, i32 32768, ptr @gm107_grctx_generate_attrib, i32 4080, i32 2720, i32 6144, i32 4096, i32 0, ptr null, ptr @gm107_grctx_generate_sm_id, ptr @gf100_grctx_generate_tpc_nr, i8 0, ptr null, ptr @gf117_grctx_generate_rop_mapping, ptr @gk104_grctx_generate_alpha_beta_tables, ptr null, ptr @gf117_grctx_generate_dist_skip_table, ptr @gm107_grctx_generate_r406500, ptr @gk104_grctx_generate_gpc_tpc_nr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gm107_grctx_generate_r419e00, ptr null, ptr null, ptr null, ptr null }, align 4
@gf100_grctx_init_main_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gm107_grctx_init_fe_0 = internal constant [18 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4210692, i8 8, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4210724, i8 1, i32 4, i32 57344 }, %struct.gf100_gr_init { i32 4210728, i8 8, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4210856, i8 8, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4210888, i8 1, i32 4, i32 -134217585 }, %struct.gf100_gr_init { i32 4210896, i8 6, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4210936, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4210944, i8 10, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4210992, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4211024, i8 1, i32 4, i32 46 }, %struct.gf100_gr_init { i32 4211028, i8 1, i32 4, i32 1024 }, %struct.gf100_gr_init { i32 4211032, i8 1, i32 4, i32 512 }, %struct.gf100_gr_init { i32 4211044, i8 1, i32 4, i32 69 }, %struct.gf100_gr_init { i32 4211068, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4211092, i8 1, i32 4, i32 16779008 }, %struct.gf100_gr_init { i32 4211104, i8 4, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4211200, i8 4, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gk110_grctx_init_pri_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk104_grctx_init_memfmt_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gm107_grctx_init_ds_0 = internal constant [10 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4216832, i8 1, i32 4, i32 260047295 }, %struct.gf100_gr_init { i32 4216880, i8 1, i32 4, i32 178262016 }, %struct.gf100_gr_init { i32 4216884, i8 1, i32 4, i32 134217728 }, %struct.gf100_gr_init { i32 4216888, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4216916, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4216944, i8 4, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4217344, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4217368, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4217372, i8 1, i32 4, i32 255 }, %struct.gf100_gr_init zeroinitializer], align 4
@gk110_grctx_init_cwd_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gm107_grctx_init_pd_0 = internal constant [12 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4218912, i8 1, i32 4, i32 121700353 }, %struct.gf100_gr_init { i32 4218920, i8 4, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4220072, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4220076, i8 1, i32 4, i32 16383 }, %struct.gf100_gr_init { i32 4220080, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4220096, i8 1, i32 4, i32 -2143288704 }, %struct.gf100_gr_init { i32 4220100, i8 1, i32 4, i32 67174399 }, %struct.gf100_gr_init { i32 4220104, i8 1, i32 4, i32 25166335 }, %struct.gf100_gr_init { i32 4220108, i8 9, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4220156, i8 1, i32 4, i32 554 }, %struct.gf100_gr_init { i32 4220160, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gk208_grctx_init_rstr2d_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk104_grctx_init_scc_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gm107_grctx_init_be_0 = internal constant [9 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4229120, i8 1, i32 4, i32 847260220 }, %struct.gf100_gr_init { i32 4229124, i8 1, i32 4, i32 64 }, %struct.gf100_gr_init { i32 4229128, i8 1, i32 4, i32 268689413 }, %struct.gf100_gr_init { i32 4229184, i8 1, i32 4, i32 11 }, %struct.gf100_gr_init { i32 4229376, i8 1, i32 4, i32 -1333741567 }, %struct.gf100_gr_init { i32 4229380, i8 1, i32 4, i32 1661173761 }, %struct.gf100_gr_init { i32 4229384, i8 1, i32 4, i32 46665775 }, %struct.gf100_gr_init { i32 4229504, i8 1, i32 4, i32 285 }, %struct.gf100_gr_init zeroinitializer], align 4
@gk208_grctx_init_prop_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gm107_grctx_init_gpc_unk_1 = internal constant [7 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4294144, i8 1, i32 4, i32 127 }, %struct.gf100_gr_init { i32 4294276, i8 1, i32 4, i32 31 }, %struct.gf100_gr_init { i32 4294400, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 4294404, i8 1, i32 4, i32 128 }, %struct.gf100_gr_init { i32 4294408, i8 1, i32 4, i32 1073741824 }, %struct.gf100_gr_init { i32 4294412, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gm107_grctx_init_setup_0 = internal constant [9 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4294656, i8 1, i32 4, i32 1879475770 }, %struct.gf100_gr_init { i32 4294672, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4294696, i8 1, i32 4, i32 68 }, %struct.gf100_gr_init { i32 4294704, i8 1, i32 4, i32 268435457 }, %struct.gf100_gr_init { i32 4294872, i8 1, i32 4, i32 8 }, %struct.gf100_gr_init { i32 4294880, i8 1, i32 4, i32 16777216 }, %struct.gf100_gr_init { i32 4294888, i8 5, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4294908, i8 1, i32 4, i32 537919576 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_grctx_init_zcull_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk208_grctx_init_crstr_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk104_grctx_init_gpm_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gm107_grctx_init_gpc_unk_2 = internal constant [10 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4295972, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4296192, i8 1, i32 4, i32 -1879048192 }, %struct.gf100_gr_init { i32 4296228, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4296232, i8 1, i32 4, i32 48 }, %struct.gf100_gr_init { i32 4296240, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4296244, i8 1, i32 4, i32 65536 }, %struct.gf100_gr_init { i32 4296248, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4296256, i8 22, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4296352, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_grctx_init_gcc_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf117_grctx_init_pe_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gm107_grctx_init_tex_0 = internal constant [12 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299264, i8 1, i32 4, i32 196848 }, %struct.gf100_gr_init { i32 4299268, i8 1, i32 4, i32 5 }, %struct.gf100_gr_init { i32 4299272, i8 1, i32 4, i32 1057 }, %struct.gf100_gr_init { i32 4299276, i8 1, i32 4, i32 1179648 }, %struct.gf100_gr_init { i32 4299280, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299284, i8 1, i32 4, i32 8704 }, %struct.gf100_gr_init { i32 4299292, i8 1, i32 4, i32 49152 }, %struct.gf100_gr_init { i32 4299296, i8 1, i32 4, i32 536906240 }, %struct.gf100_gr_init { i32 4299312, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4299324, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 4299460, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gm107_grctx_init_mpc_0 = internal constant [10 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299776, i8 1, i32 4, i32 26 }, %struct.gf100_gr_init { i32 4299780, i8 1, i32 4, i32 -2147483642 }, %struct.gf100_gr_init { i32 4299784, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 4299808, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299812, i8 1, i32 4, i32 541200 }, %struct.gf100_gr_init { i32 4299816, i8 1, i32 4, i32 1056698302 }, %struct.gf100_gr_init { i32 4299820, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299828, i8 1, i32 4, i32 33497075 }, %struct.gf100_gr_init { i32 4299836, i8 1, i32 4, i32 6425 }, %struct.gf100_gr_init zeroinitializer], align 4
@gm107_grctx_init_l1c_0 = internal constant [2 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299908, i8 1, i32 4, i32 32 }, %struct.gf100_gr_init zeroinitializer], align 4
@gm107_grctx_init_sm_0 = internal constant [17 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4300292, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300304, i8 1, i32 4, i32 7170 }, %struct.gf100_gr_init { i32 4300356, i8 1, i32 4, i32 13889522 }, %struct.gf100_gr_init { i32 4300360, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300364, i8 1, i32 4, i32 127 }, %struct.gf100_gr_init { i32 4300368, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300384, i8 4, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300404, i8 10, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300460, i8 1, i32 4, i32 118667 }, %struct.gf100_gr_init { i32 4300464, i8 1, i32 4, i32 197376 }, %struct.gf100_gr_init { i32 4300472, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300528, i8 24, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300648, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300656, i8 1, i32 4, i32 32 }, %struct.gf100_gr_init { i32 4300664, i8 1, i32 4, i32 1003 }, %struct.gf100_gr_init { i32 4300668, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gk104_grctx_init_pes_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gm107_grctx_init_cbm_0 = internal constant [6 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4308672, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4308676, i8 1, i32 4, i32 17104896 }, %struct.gf100_gr_init { i32 4308708, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4308720, i8 1, i32 4, i32 1023 }, %struct.gf100_gr_init { i32 4308724, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gm107_grctx_init_icmd_0 = internal constant [255 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4096, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 57, i8 3, i32 1, i32 0 }, %struct.gf100_gr_init { i32 169, i8 1, i32 1, i32 65535 }, %struct.gf100_gr_init { i32 56, i8 1, i32 1, i32 262957185 }, %struct.gf100_gr_init { i32 61, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 232, i8 8, i32 1, i32 1024 }, %struct.gf100_gr_init { i32 120, i8 8, i32 1, i32 768 }, %struct.gf100_gr_init { i32 80, i8 1, i32 1, i32 17 }, %struct.gf100_gr_init { i32 88, i8 8, i32 1, i32 8 }, %struct.gf100_gr_init { i32 520, i8 8, i32 1, i32 1 }, %struct.gf100_gr_init { i32 129, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 133, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 136, i8 1, i32 1, i32 1024 }, %struct.gf100_gr_init { i32 144, i8 1, i32 1, i32 768 }, %struct.gf100_gr_init { i32 152, i8 1, i32 1, i32 4097 }, %struct.gf100_gr_init { i32 227, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 218, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 248, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 250, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 177, i8 2, i32 1, i32 1 }, %struct.gf100_gr_init { i32 159, i8 4, i32 1, i32 65535 }, %struct.gf100_gr_init { i32 168, i8 1, i32 1, i32 65535 }, %struct.gf100_gr_init { i32 173, i8 1, i32 1, i32 318 }, %struct.gf100_gr_init { i32 225, i8 1, i32 1, i32 16 }, %struct.gf100_gr_init { i32 656, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 944, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 672, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1056, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 688, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1072, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 704, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1232, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1824, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 2240, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 2192, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 2272, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 2208, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 2288, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 2380, i8 1, i32 1, i32 255 }, %struct.gf100_gr_init { i32 2381, i8 1, i32 1, i32 -1 }, %struct.gf100_gr_init { i32 2382, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 754, i8 2, i32 1, i32 1 }, %struct.gf100_gr_init { i32 757, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 759, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 771, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 742, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1126, i8 1, i32 1, i32 82 }, %struct.gf100_gr_init { i32 769, i8 1, i32 1, i32 1065353216 }, %struct.gf100_gr_init { i32 772, i8 1, i32 1, i32 807407616 }, %struct.gf100_gr_init { i32 773, i8 1, i32 1, i32 1885360192 }, %struct.gf100_gr_init { i32 774, i8 1, i32 1, i32 -1196910456 }, %struct.gf100_gr_init { i32 775, i8 1, i32 1, i32 -118957880 }, %struct.gf100_gr_init { i32 778, i8 1, i32 1, i32 16776960 }, %struct.gf100_gr_init { i32 222, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 779, i8 1, i32 1, i32 26 }, %struct.gf100_gr_init { i32 780, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 792, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 832, i8 1, i32 1, i32 0 }, %struct.gf100_gr_init { i32 893, i8 1, i32 1, i32 6 }, %struct.gf100_gr_init { i32 928, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 938, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 937, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 896, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 899, i8 1, i32 1, i32 17 }, %struct.gf100_gr_init { i32 864, i8 1, i32 1, i32 64 }, %struct.gf100_gr_init { i32 870, i8 2, i32 1, i32 0 }, %struct.gf100_gr_init { i32 872, i8 1, i32 1, i32 4095 }, %struct.gf100_gr_init { i32 880, i8 2, i32 1, i32 0 }, %struct.gf100_gr_init { i32 882, i8 1, i32 1, i32 1048575 }, %struct.gf100_gr_init { i32 890, i8 1, i32 1, i32 18 }, %struct.gf100_gr_init { i32 1561, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 2065, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 2066, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 2067, i8 1, i32 1, i32 6 }, %struct.gf100_gr_init { i32 2068, i8 1, i32 1, i32 8 }, %struct.gf100_gr_init { i32 2069, i8 1, i32 1, i32 11 }, %struct.gf100_gr_init { i32 2048, i8 6, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1586, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1587, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 1588, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 1589, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 1620, i8 1, i32 1, i32 1065353216 }, %struct.gf100_gr_init { i32 1623, i8 1, i32 1, i32 1065353216 }, %struct.gf100_gr_init { i32 1621, i8 2, i32 1, i32 1065353216 }, %struct.gf100_gr_init { i32 1741, i8 1, i32 1, i32 1065353216 }, %struct.gf100_gr_init { i32 2037, i8 1, i32 1, i32 1065353216 }, %struct.gf100_gr_init { i32 2012, i8 1, i32 1, i32 958994697 }, %struct.gf100_gr_init { i32 2013, i8 1, i32 1, i32 2036947273 }, %struct.gf100_gr_init { i32 2014, i8 1, i32 1, i32 -1180067447 }, %struct.gf100_gr_init { i32 2015, i8 1, i32 1, i32 -102114871 }, %struct.gf100_gr_init { i32 2024, i8 1, i32 1, i32 12816 }, %struct.gf100_gr_init { i32 2025, i8 1, i32 1, i32 30292 }, %struct.gf100_gr_init { i32 2026, i8 1, i32 1, i32 152 }, %struct.gf100_gr_init { i32 2028, i8 1, i32 1, i32 958994697 }, %struct.gf100_gr_init { i32 2029, i8 1, i32 1, i32 2036947273 }, %struct.gf100_gr_init { i32 2030, i8 1, i32 1, i32 -1180067447 }, %struct.gf100_gr_init { i32 2031, i8 1, i32 1, i32 -102114871 }, %struct.gf100_gr_init { i32 2032, i8 1, i32 1, i32 12816 }, %struct.gf100_gr_init { i32 2033, i8 1, i32 1, i32 30292 }, %struct.gf100_gr_init { i32 2034, i8 1, i32 1, i32 152 }, %struct.gf100_gr_init { i32 1445, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1488, i8 1, i32 1, i32 538447880 }, %struct.gf100_gr_init { i32 1489, i8 1, i32 1, i32 1077424168 }, %struct.gf100_gr_init { i32 1490, i8 1, i32 1, i32 1616400456 }, %struct.gf100_gr_init { i32 1491, i8 1, i32 1, i32 -2139590552 }, %struct.gf100_gr_init { i32 2432, i8 -128, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1128, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 1132, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1136, i8 96, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1296, i8 16, i32 1, i32 1065353216 }, %struct.gf100_gr_init { i32 1312, i8 1, i32 1, i32 694 }, %struct.gf100_gr_init { i32 1321, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1328, i8 16, i32 1, i32 -65536 }, %struct.gf100_gr_init { i32 1360, i8 32, i32 1, i32 -65536 }, %struct.gf100_gr_init { i32 1413, i8 1, i32 1, i32 63 }, %struct.gf100_gr_init { i32 1398, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 1403, i8 1, i32 1, i32 89 }, %struct.gf100_gr_init { i32 1414, i8 1, i32 1, i32 64 }, %struct.gf100_gr_init { i32 1410, i8 2, i32 1, i32 128 }, %struct.gf100_gr_init { i32 1429, i8 1, i32 1, i32 4194368 }, %struct.gf100_gr_init { i32 1430, i8 1, i32 1, i32 1170 }, %struct.gf100_gr_init { i32 1431, i8 1, i32 1, i32 134742531 }, %struct.gf100_gr_init { i32 1453, i8 1, i32 1, i32 8 }, %struct.gf100_gr_init { i32 1432, i8 1, i32 1, i32 131073 }, %struct.gf100_gr_init { i32 1474, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1592, i8 2, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1594, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 1595, i8 2, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1597, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 1598, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2232, i8 8, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2304, i8 8, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2312, i8 8, i32 1, i32 2 }, %struct.gf100_gr_init { i32 2320, i8 16, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2336, i8 8, i32 1, i32 2 }, %struct.gf100_gr_init { i32 2344, i8 8, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1634, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1608, i8 9, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1624, i8 1, i32 1, i32 15 }, %struct.gf100_gr_init { i32 2047, i8 1, i32 1, i32 10 }, %struct.gf100_gr_init { i32 1642, i8 1, i32 1, i32 1073741824 }, %struct.gf100_gr_init { i32 1643, i8 1, i32 1, i32 268435456 }, %struct.gf100_gr_init { i32 1644, i8 2, i32 1, i32 -65536 }, %struct.gf100_gr_init { i32 1967, i8 2, i32 1, i32 8 }, %struct.gf100_gr_init { i32 2038, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1714, i8 1, i32 1, i32 85 }, %struct.gf100_gr_init { i32 1965, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 2417, i8 1, i32 1, i32 8 }, %struct.gf100_gr_init { i32 2418, i8 1, i32 1, i32 64 }, %struct.gf100_gr_init { i32 2419, i8 1, i32 1, i32 300 }, %struct.gf100_gr_init { i32 2428, i8 1, i32 1, i32 64 }, %struct.gf100_gr_init { i32 2421, i8 1, i32 1, i32 32 }, %struct.gf100_gr_init { i32 2422, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2423, i8 1, i32 1, i32 32 }, %struct.gf100_gr_init { i32 2424, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2391, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 2398, i8 1, i32 1, i32 538329104 }, %struct.gf100_gr_init { i32 2399, i8 1, i32 1, i32 32 }, %struct.gf100_gr_init { i32 2573, i8 1, i32 1, i32 6 }, %struct.gf100_gr_init { i32 2429, i8 1, i32 1, i32 12 }, %struct.gf100_gr_init { i32 1667, i8 1, i32 1, i32 6 }, %struct.gf100_gr_init { i32 1671, i8 1, i32 1, i32 4194303 }, %struct.gf100_gr_init { i32 1696, i8 1, i32 1, i32 5 }, %struct.gf100_gr_init { i32 2112, i8 1, i32 1, i32 4194312 }, %struct.gf100_gr_init { i32 2113, i8 1, i32 1, i32 134217856 }, %struct.gf100_gr_init { i32 2114, i8 1, i32 1, i32 4194312 }, %struct.gf100_gr_init { i32 2115, i8 1, i32 1, i32 134217856 }, %struct.gf100_gr_init { i32 2072, i8 8, i32 1, i32 0 }, %struct.gf100_gr_init { i32 2120, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1848, i8 1, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1706, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1707, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 1708, i8 1, i32 1, i32 128 }, %struct.gf100_gr_init { i32 1709, i8 2, i32 1, i32 256 }, %struct.gf100_gr_init { i32 1713, i8 1, i32 1, i32 17 }, %struct.gf100_gr_init { i32 1723, i8 1, i32 1, i32 207 }, %struct.gf100_gr_init { i32 1742, i8 1, i32 1, i32 712057992 }, %struct.gf100_gr_init { i32 1849, i8 1, i32 1, i32 1082507264 }, %struct.gf100_gr_init { i32 1850, i8 1, i32 1, i32 128 }, %struct.gf100_gr_init { i32 1926, i8 1, i32 1, i32 -2147483392 }, %struct.gf100_gr_init { i32 1852, i8 1, i32 1, i32 65792 }, %struct.gf100_gr_init { i32 1853, i8 1, i32 1, i32 41943040 }, %struct.gf100_gr_init { i32 1927, i8 1, i32 1, i32 207 }, %struct.gf100_gr_init { i32 1932, i8 1, i32 1, i32 8 }, %struct.gf100_gr_init { i32 1938, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1940, i8 3, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1943, i8 1, i32 1, i32 207 }, %struct.gf100_gr_init { i32 2102, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1946, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 2099, i8 1, i32 1, i32 71582848 }, %struct.gf100_gr_init { i32 1953, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1955, i8 3, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2097, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 2823, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 2824, i8 2, i32 1, i32 256 }, %struct.gf100_gr_init { i32 2826, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2564, i8 1, i32 1, i32 255 }, %struct.gf100_gr_init { i32 2571, i8 1, i32 1, i32 64 }, %struct.gf100_gr_init { i32 2431, i8 1, i32 1, i32 256 }, %struct.gf100_gr_init { i32 2562, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2057, i8 1, i32 1, i32 7 }, %struct.gf100_gr_init { i32 49697, i8 1, i32 1, i32 64 }, %struct.gf100_gr_init { i32 49584, i8 8, i32 1, i32 15 }, %struct.gf100_gr_init { i32 49592, i8 1, i32 1, i32 262957185 }, %struct.gf100_gr_init { i32 49593, i8 1, i32 1, i32 16434824 }, %struct.gf100_gr_init { i32 50177, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 50178, i8 1, i32 1, i32 65537 }, %struct.gf100_gr_init { i32 50179, i8 2, i32 1, i32 1 }, %struct.gf100_gr_init { i32 50190, i8 1, i32 1, i32 32 }, %struct.gf100_gr_init { i32 123136, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 4096, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 1706, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1709, i8 2, i32 1, i32 256 }, %struct.gf100_gr_init { i32 1713, i8 1, i32 1, i32 17 }, %struct.gf100_gr_init { i32 1932, i8 1, i32 1, i32 8 }, %struct.gf100_gr_init { i32 1938, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1940, i8 3, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1943, i8 1, i32 1, i32 207 }, %struct.gf100_gr_init { i32 1946, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 1953, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1955, i8 3, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2097, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 123136, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 4096, i8 1, i32 1, i32 8 }, %struct.gf100_gr_init { i32 57, i8 3, i32 1, i32 0 }, %struct.gf100_gr_init { i32 896, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 870, i8 2, i32 1, i32 0 }, %struct.gf100_gr_init { i32 872, i8 1, i32 1, i32 4095 }, %struct.gf100_gr_init { i32 880, i8 2, i32 1, i32 0 }, %struct.gf100_gr_init { i32 882, i8 1, i32 1, i32 1048575 }, %struct.gf100_gr_init { i32 2067, i8 1, i32 1, i32 6 }, %struct.gf100_gr_init { i32 2068, i8 1, i32 1, i32 8 }, %struct.gf100_gr_init { i32 2072, i8 8, i32 1, i32 0 }, %struct.gf100_gr_init { i32 2120, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1848, i8 1, i32 1, i32 0 }, %struct.gf100_gr_init { i32 2823, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 2824, i8 2, i32 1, i32 256 }, %struct.gf100_gr_init { i32 2826, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2564, i8 1, i32 1, i32 255 }, %struct.gf100_gr_init { i32 2571, i8 1, i32 1, i32 64 }, %struct.gf100_gr_init { i32 2431, i8 1, i32 1, i32 256 }, %struct.gf100_gr_init { i32 2562, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2057, i8 1, i32 1, i32 7 }, %struct.gf100_gr_init { i32 49697, i8 1, i32 1, i32 64 }, %struct.gf100_gr_init { i32 50177, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 50178, i8 1, i32 1, i32 65537 }, %struct.gf100_gr_init { i32 50179, i8 2, i32 1, i32 1 }, %struct.gf100_gr_init { i32 50190, i8 1, i32 1, i32 32 }, %struct.gf100_gr_init { i32 123136, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 4096, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2823, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 2824, i8 2, i32 1, i32 256 }, %struct.gf100_gr_init { i32 2826, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 123136, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init zeroinitializer], align 4
@gm107_grctx_init_b097_0 = internal constant [313 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 2048, i8 8, i32 64, i32 0 }, %struct.gf100_gr_init { i32 2052, i8 8, i32 64, i32 0 }, %struct.gf100_gr_init { i32 2056, i8 8, i32 64, i32 1024 }, %struct.gf100_gr_init { i32 2060, i8 8, i32 64, i32 768 }, %struct.gf100_gr_init { i32 2064, i8 1, i32 4, i32 207 }, %struct.gf100_gr_init { i32 2128, i8 7, i32 64, i32 0 }, %struct.gf100_gr_init { i32 2068, i8 8, i32 64, i32 64 }, %struct.gf100_gr_init { i32 2072, i8 8, i32 64, i32 1 }, %struct.gf100_gr_init { i32 2076, i8 8, i32 64, i32 0 }, %struct.gf100_gr_init { i32 2080, i8 8, i32 64, i32 0 }, %struct.gf100_gr_init { i32 7168, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7172, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7176, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7180, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7424, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7428, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7432, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7436, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7936, i8 16, i32 8, i32 0 }, %struct.gf100_gr_init { i32 7940, i8 16, i32 8, i32 0 }, %struct.gf100_gr_init { i32 8064, i8 16, i32 8, i32 0 }, %struct.gf100_gr_init { i32 8068, i8 16, i32 8, i32 0 }, %struct.gf100_gr_init { i32 8192, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 8256, i8 1, i32 4, i32 17 }, %struct.gf100_gr_init { i32 8320, i8 1, i32 4, i32 32 }, %struct.gf100_gr_init { i32 8384, i8 1, i32 4, i32 48 }, %struct.gf100_gr_init { i32 8448, i8 1, i32 4, i32 64 }, %struct.gf100_gr_init { i32 8512, i8 1, i32 4, i32 81 }, %struct.gf100_gr_init { i32 8204, i8 6, i32 64, i32 1 }, %struct.gf100_gr_init { i32 8208, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 8272, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 8336, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 8400, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 8464, i8 1, i32 4, i32 3 }, %struct.gf100_gr_init { i32 8528, i8 1, i32 4, i32 4 }, %struct.gf100_gr_init { i32 896, i8 4, i32 32, i32 0 }, %struct.gf100_gr_init { i32 900, i8 4, i32 32, i32 0 }, %struct.gf100_gr_init { i32 904, i8 4, i32 32, i32 0 }, %struct.gf100_gr_init { i32 908, i8 4, i32 32, i32 0 }, %struct.gf100_gr_init { i32 1792, i8 4, i32 16, i32 0 }, %struct.gf100_gr_init { i32 1796, i8 4, i32 16, i32 0 }, %struct.gf100_gr_init { i32 1800, i8 4, i32 16, i32 0 }, %struct.gf100_gr_init { i32 10240, i8 -128, i32 4, i32 0 }, %struct.gf100_gr_init { i32 2560, i8 16, i32 32, i32 0 }, %struct.gf100_gr_init { i32 2564, i8 16, i32 32, i32 0 }, %struct.gf100_gr_init { i32 2568, i8 16, i32 32, i32 0 }, %struct.gf100_gr_init { i32 2572, i8 16, i32 32, i32 0 }, %struct.gf100_gr_init { i32 2576, i8 16, i32 32, i32 0 }, %struct.gf100_gr_init { i32 2580, i8 16, i32 32, i32 0 }, %struct.gf100_gr_init { i32 3072, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 3076, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 3080, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 3084, i8 16, i32 16, i32 1065353216 }, %struct.gf100_gr_init { i32 3328, i8 8, i32 8, i32 -65536 }, %struct.gf100_gr_init { i32 3332, i8 8, i32 8, i32 -65536 }, %struct.gf100_gr_init { i32 3584, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 3588, i8 16, i32 16, i32 -65536 }, %struct.gf100_gr_init { i32 3592, i8 16, i32 16, i32 -65536 }, %struct.gf100_gr_init { i32 3392, i8 4, i32 8, i32 0 }, %struct.gf100_gr_init { i32 3396, i8 4, i32 8, i32 0 }, %struct.gf100_gr_init { i32 7680, i8 8, i32 32, i32 1 }, %struct.gf100_gr_init { i32 7684, i8 8, i32 32, i32 1 }, %struct.gf100_gr_init { i32 7688, i8 8, i32 32, i32 2 }, %struct.gf100_gr_init { i32 7692, i8 8, i32 32, i32 1 }, %struct.gf100_gr_init { i32 7696, i8 8, i32 32, i32 1 }, %struct.gf100_gr_init { i32 7700, i8 8, i32 32, i32 2 }, %struct.gf100_gr_init { i32 7704, i8 8, i32 32, i32 1 }, %struct.gf100_gr_init { i32 5248, i8 8, i32 16, i32 0 }, %struct.gf100_gr_init { i32 5252, i8 8, i32 16, i32 0 }, %struct.gf100_gr_init { i32 5256, i8 8, i32 16, i32 0 }, %struct.gf100_gr_init { i32 13312, i8 -128, i32 4, i32 0 }, %struct.gf100_gr_init { i32 780, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 6468, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5396, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3432, i8 1, i32 4, i32 65535 }, %struct.gf100_gr_init { i32 4636, i8 1, i32 4, i32 262957185 }, %struct.gf100_gr_init { i32 4012, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5432, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4064, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4072, i8 1, i32 4, i32 20 }, %struct.gf100_gr_init { i32 4076, i8 1, i32 4, i32 64 }, %struct.gf100_gr_init { i32 4080, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6044, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4648, i8 1, i32 4, i32 1024 }, %struct.gf100_gr_init { i32 4652, i8 1, i32 4, i32 768 }, %struct.gf100_gr_init { i32 4656, i8 1, i32 4, i32 65537 }, %struct.gf100_gr_init { i32 2040, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5556, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5580, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5428, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 1876, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4016, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5584, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5436, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5812, i8 1, i32 4, i32 3 }, %struct.gf100_gr_init { i32 4028, i8 4, i32 4, i32 65535 }, %struct.gf100_gr_init { i32 3576, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6472, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6512, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5660, i8 1, i32 4, i32 2544 }, %struct.gf100_gr_init { i32 3532, i8 1, i32 4, i32 16 }, %struct.gf100_gr_init { i32 5604, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4448, i8 32, i32 4, i32 635437120 }, %struct.gf100_gr_init { i32 6272, i8 32, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3972, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6088, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6096, i8 1, i32 4, i32 255 }, %struct.gf100_gr_init { i32 6100, i8 1, i32 4, i32 -1 }, %struct.gf100_gr_init { i32 6104, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 6108, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5620, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5172, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3444, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5028, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4888, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4224, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4232, i8 2, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4240, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4244, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4248, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4252, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4256, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5700, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 1864, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3560, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5704, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4772, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4384, i8 4, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4376, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5708, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5720, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6416, i8 1, i32 4, i32 656 }, %struct.gf100_gr_init { i32 5400, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5724, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5408, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5636, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5488, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5040, i8 2, i32 4, i32 1065353216 }, %struct.gf100_gr_init { i32 524, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5744, i8 1, i32 4, i32 807407616 }, %struct.gf100_gr_init { i32 5748, i8 1, i32 4, i32 1885360192 }, %struct.gf100_gr_init { i32 5752, i8 1, i32 4, i32 -1196910456 }, %struct.gf100_gr_init { i32 5756, i8 1, i32 4, i32 -118957880 }, %struct.gf100_gr_init { i32 5740, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5760, i8 1, i32 4, i32 16776960 }, %struct.gf100_gr_init { i32 4816, i8 1, i32 4, i32 3 }, %struct.gf100_gr_init { i32 4820, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 5764, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3500, i8 2, i32 4, i32 6914 }, %struct.gf100_gr_init { i32 3508, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5772, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5564, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5484, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6268, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4368, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 3520, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3904, i8 5, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4660, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5776, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 1936, i8 5, i32 4, i32 0 }, %struct.gf100_gr_init { i32 1916, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4096, i8 1, i32 4, i32 16 }, %struct.gf100_gr_init { i32 4348, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4752, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 536, i8 1, i32 4, i32 16 }, %struct.gf100_gr_init { i32 4824, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4828, i8 1, i32 4, i32 16 }, %struct.gf100_gr_init { i32 3476, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5468, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5476, i8 1, i32 4, i32 4095 }, %struct.gf100_gr_init { i32 5492, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5500, i8 1, i32 4, i32 1048575 }, %struct.gf100_gr_init { i32 4948, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5648, i8 1, i32 4, i32 18 }, %struct.gf100_gr_init { i32 5640, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 9740, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 1964, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5676, i8 1, i32 4, i32 3 }, %struct.gf100_gr_init { i32 528, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 800, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 804, i8 6, i32 4, i32 1065353216 }, %struct.gf100_gr_init { i32 1872, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 1888, i8 1, i32 4, i32 958994697 }, %struct.gf100_gr_init { i32 1892, i8 1, i32 4, i32 2036947273 }, %struct.gf100_gr_init { i32 1896, i8 1, i32 4, i32 -1180067447 }, %struct.gf100_gr_init { i32 1900, i8 1, i32 4, i32 -102114871 }, %struct.gf100_gr_init { i32 1904, i8 1, i32 4, i32 807407616 }, %struct.gf100_gr_init { i32 1908, i8 1, i32 4, i32 1885360192 }, %struct.gf100_gr_init { i32 1912, i8 1, i32 4, i32 36992 }, %struct.gf100_gr_init { i32 1920, i8 1, i32 4, i32 958994697 }, %struct.gf100_gr_init { i32 1924, i8 1, i32 4, i32 2036947273 }, %struct.gf100_gr_init { i32 1928, i8 1, i32 4, i32 -1180067447 }, %struct.gf100_gr_init { i32 1932, i8 1, i32 4, i32 -102114871 }, %struct.gf100_gr_init { i32 2000, i8 1, i32 4, i32 807407616 }, %struct.gf100_gr_init { i32 2004, i8 1, i32 4, i32 1885360192 }, %struct.gf100_gr_init { i32 2008, i8 1, i32 4, i32 36992 }, %struct.gf100_gr_init { i32 892, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 1856, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 9728, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6424, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6428, i8 1, i32 4, i32 2304 }, %struct.gf100_gr_init { i32 6432, i8 1, i32 4, i32 1029 }, %struct.gf100_gr_init { i32 4872, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 6436, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5036, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6444, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 6460, i8 1, i32 4, i32 11292 }, %struct.gf100_gr_init { i32 3452, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3980, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 704, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5392, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6464, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4084, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6476, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6504, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5520, i8 1, i32 4, i32 63 }, %struct.gf100_gr_init { i32 2024, i8 4, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6508, i8 1, i32 4, i32 17 }, %struct.gf100_gr_init { i32 740, i8 1, i32 4, i32 45057 }, %struct.gf100_gr_init { i32 876, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6524, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4044, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 728, i8 1, i32 4, i32 64 }, %struct.gf100_gr_init { i32 6528, i8 1, i32 4, i32 128 }, %struct.gf100_gr_init { i32 5380, i8 1, i32 4, i32 128 }, %struct.gf100_gr_init { i32 6532, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3936, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3940, i8 1, i32 4, i32 4194368 }, %struct.gf100_gr_init { i32 3944, i8 1, i32 4, i32 8722 }, %struct.gf100_gr_init { i32 3948, i8 1, i32 4, i32 134742531 }, %struct.gf100_gr_init { i32 4360, i8 1, i32 4, i32 8 }, %struct.gf100_gr_init { i32 3952, i8 1, i32 4, i32 524289 }, %struct.gf100_gr_init { i32 4092, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 768, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5032, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4844, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4880, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4884, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4992, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4996, i8 4, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5012, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5020, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5016, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5524, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5528, i8 4, i32 4, i32 1 }, %struct.gf100_gr_init { i32 3924, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6588, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3996, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4812, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4840, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4876, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4960, i8 8, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4924, i8 2, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4932, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 4936, i8 2, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4944, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 4952, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4836, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4892, i8 4, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6592, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4416, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3536, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3540, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 756, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6596, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6600, i8 1, i32 4, i32 5376 }, %struct.gf100_gr_init { i32 4956, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3984, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6624, i8 8, i32 4, i32 1 }, %struct.gf100_gr_init { i32 6604, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5560, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6656, i8 1, i32 4, i32 4369 }, %struct.gf100_gr_init { i32 6660, i8 7, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3436, i8 2, i32 4, i32 -65536 }, %struct.gf100_gr_init { i32 4344, i8 1, i32 4, i32 4112 }, %struct.gf100_gr_init { i32 3456, i8 5, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3488, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 1956, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5384, i8 1, i32 4, i32 -2147483648 }, %struct.gf100_gr_init { i32 5388, i8 1, i32 4, i32 1073741824 }, %struct.gf100_gr_init { i32 5736, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 792, i8 2, i32 4, i32 8 }, %struct.gf100_gr_init { i32 3484, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 3860, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 884, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 888, i8 1, i32 4, i32 12 }, %struct.gf100_gr_init { i32 2012, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 1868, i8 1, i32 4, i32 85 }, %struct.gf100_gr_init { i32 5152, i8 1, i32 4, i32 3 }, %struct.gf100_gr_init { i32 4104, i8 1, i32 4, i32 8 }, %struct.gf100_gr_init { i32 4108, i8 1, i32 4, i32 64 }, %struct.gf100_gr_init { i32 4112, i8 1, i32 4, i32 300 }, %struct.gf100_gr_init { i32 3424, i8 1, i32 4, i32 64 }, %struct.gf100_gr_init { i32 4120, i8 1, i32 4, i32 32 }, %struct.gf100_gr_init { i32 4124, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4128, i8 1, i32 4, i32 32 }, %struct.gf100_gr_init { i32 4132, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5188, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 864, i8 1, i32 4, i32 538329104 }, %struct.gf100_gr_init { i32 868, i8 1, i32 4, i32 32 }, %struct.gf100_gr_init { i32 872, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3496, i8 1, i32 4, i32 48 }, %struct.gf100_gr_init { i32 3556, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 516, i8 1, i32 4, i32 6 }, %struct.gf100_gr_init { i32 720, i8 1, i32 4, i32 4194303 }, %struct.gf100_gr_init { i32 4640, i8 1, i32 4, i32 5 }, %struct.gf100_gr_init { i32 4060, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3992, i8 1, i32 4, i32 4194312 }, %struct.gf100_gr_init { i32 4740, i8 1, i32 4, i32 134217856 }, %struct.gf100_gr_init { i32 5200, i8 1, i32 4, i32 4194312 }, %struct.gf100_gr_init { i32 5204, i8 1, i32 4, i32 134217856 }, %struct.gf100_gr_init { i32 532, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_grctx_init_902d_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gm107_grctx_generate_bundle(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gf100_gr_func, ptr %3, i32 0, i32 36
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 14
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 13
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 5
  %11 = tail call i32 @llvm.umin.i32(i32 %7, i32 %10)
  %12 = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 15
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @gf100_grctx_mmio_data(ptr noundef %0, i32 noundef %9, i32 noundef 256, i1 noundef zeroext true) #3
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4227076, i32 noundef 0, i32 noundef 8, i32 noundef %14) #3
  %15 = load i32, ptr %8, align 4
  %16 = lshr i32 %15, 8
  %17 = or i32 %16, -2147483648
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4227080, i32 noundef %17, i32 noundef 0, i32 noundef -1) #3
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4296228, i32 noundef 0, i32 noundef 8, i32 noundef %14) #3
  %18 = load i32, ptr %8, align 4
  %19 = lshr i32 %18, 8
  %20 = or i32 %19, -2147483648
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4296232, i32 noundef %20, i32 noundef 0, i32 noundef -1) #3
  %21 = shl i32 %11, 16
  %22 = or i32 %21, %13
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4220104, i32 noundef %22, i32 noundef 0, i32 noundef -1) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_grctx_mmio_data(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_mmio_item(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gm107_grctx_generate_pagepool(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gf100_gr_func, ptr %3, i32 0, i32 36
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 17
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @gf100_grctx_mmio_data(ptr noundef %0, i32 noundef %7, i32 noundef 256, i1 noundef zeroext true) #3
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4227084, i32 noundef 0, i32 noundef 8, i32 noundef %8) #3
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4227088, i32 noundef -2147483648, i32 noundef 0, i32 noundef -1) #3
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4296708, i32 noundef 0, i32 noundef 8, i32 noundef %8) #3
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4296712, i32 noundef 0, i32 noundef 0, i32 noundef -1) #3
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4220108, i32 noundef -2147483648, i32 noundef 0, i32 noundef -1) #3
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4296240, i32 noundef -2147483648, i32 noundef 0, i32 noundef -1) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gm107_grctx_generate_attrib(ptr noundef %0) #0 {
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
  %20 = tail call i32 @gf100_grctx_mmio_data(ptr noundef %0, i32 noundef %19, i32 noundef 4096, i1 noundef zeroext false) #3
  %21 = load i32, ptr %10, align 4
  %22 = load i8, ptr %16, align 1
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4294672, i32 noundef -2147483648, i32 noundef 12, i32 noundef %20) #3
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4298824, i32 noundef 268435456, i32 noundef 12, i32 noundef %20) #3
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4299820, i32 noundef 268435456, i32 noundef 12, i32 noundef %20) #3
  %23 = shl i32 %9, 16
  %24 = or i32 %23, %7
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4216880, i32 noundef %24, i32 noundef 0, i32 noundef -1) #3
  %25 = shl i32 %7, 14
  %26 = or i32 %25, 65535
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef 4220100, i32 noundef %26, i32 noundef 0, i32 noundef -1) #3
  %27 = getelementptr inbounds %struct.gf100_gr, ptr %2, i32 0, i32 13
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %103, label %30

30:                                               ; preds = %1
  %31 = zext i8 %22 to i32
  %32 = mul i32 %21, %31
  br label %33

33:                                               ; preds = %95, %30
  %34 = phi i8 [ %96, %95 ], [ %28, %30 ]
  %35 = phi i32 [ %99, %95 ], [ 0, %30 ]
  %36 = phi i32 [ %100, %95 ], [ 0, %30 ]
  %37 = phi i32 [ %98, %95 ], [ %32, %30 ]
  %38 = phi i32 [ %97, %95 ], [ 0, %30 ]
  %39 = getelementptr %struct.gf100_gr, ptr %2, i32 0, i32 17, i32 %36
  %40 = load i8, ptr %39, align 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %95, label %42

42:                                               ; preds = %33
  %43 = getelementptr %struct.gf100_gr, ptr %2, i32 0, i32 18, i32 %36
  %44 = shl i32 %36, 15
  %45 = add nuw nsw i32 %44, 5255168
  br label %46

46:                                               ; preds = %85, %42
  %47 = phi i8 [ %40, %42 ], [ %86, %85 ]
  %48 = phi i32 [ %35, %42 ], [ %90, %85 ]
  %49 = phi i32 [ 0, %42 ], [ %89, %85 ]
  %50 = phi i32 [ %37, %42 ], [ %88, %85 ]
  %51 = phi i32 [ %38, %42 ], [ %87, %85 ]
  %52 = load i8, ptr %43, align 1
  %53 = zext i8 %52 to i32
  %54 = shl nuw i32 1, %49
  %55 = and i32 %54, %53
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %85, label %57

57:                                               ; preds = %46
  %58 = shl i32 %49, 9
  %59 = add nuw nsw i32 %45, %58
  %60 = shl i32 %48, 2
  %61 = add i32 %60, 4296352
  %62 = getelementptr %struct.gf100_gr, ptr %2, i32 0, i32 20, i32 %36, i32 %49
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = mul i32 %9, %64
  %66 = mul i32 %7, %64
  %67 = or i32 %59, 192
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef %67, i32 noundef %65, i32 noundef 0, i32 noundef -1) #3
  %68 = or i32 %59, 244
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef %68, i32 noundef %51, i32 noundef 0, i32 noundef -1) #3
  %69 = load i32, ptr %10, align 4
  %70 = load i8, ptr %62, align 1
  %71 = zext i8 %70 to i32
  %72 = mul i32 %69, %71
  %73 = add i32 %72, %51
  %74 = or i32 %59, 228
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef %74, i32 noundef %66, i32 noundef 0, i32 noundef -1) #3
  %75 = or i32 %59, 248
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef %75, i32 noundef %50, i32 noundef 0, i32 noundef -1) #3
  %76 = load i32, ptr %12, align 4
  %77 = load i8, ptr %62, align 1
  %78 = zext i8 %77 to i32
  %79 = mul i32 %76, %78
  %80 = add i32 %79, %50
  %81 = udiv i32 %65, 3
  %82 = shl i32 %81, 16
  %83 = or i32 %82, %65
  tail call void @gf100_grctx_mmio_item(ptr noundef %0, i32 noundef %61, i32 noundef %83, i32 noundef 0, i32 noundef -1) #3
  %84 = load i8, ptr %39, align 1
  br label %85

85:                                               ; preds = %57, %46
  %86 = phi i8 [ %84, %57 ], [ %47, %46 ]
  %87 = phi i32 [ %73, %57 ], [ %51, %46 ]
  %88 = phi i32 [ %80, %57 ], [ %50, %46 ]
  %89 = add nuw nsw i32 %49, 1
  %90 = add i32 %48, 1
  %91 = zext i8 %86 to i32
  %92 = icmp ult i32 %89, %91
  br i1 %92, label %46, label %93

93:                                               ; preds = %85
  %94 = load i8, ptr %27, align 1
  br label %95

95:                                               ; preds = %93, %33
  %96 = phi i8 [ %34, %33 ], [ %94, %93 ]
  %97 = phi i32 [ %38, %33 ], [ %87, %93 ]
  %98 = phi i32 [ %37, %33 ], [ %88, %93 ]
  %99 = phi i32 [ %35, %33 ], [ %90, %93 ]
  %100 = add nuw nsw i32 %36, 1
  %101 = zext i8 %96 to i32
  %102 = icmp ult i32 %100, %101
  br i1 %102, label %33, label %103

103:                                              ; preds = %95, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gm107_grctx_generate_sm_id(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = shl i32 %1, 15
  %10 = add i32 %9, 5259264
  %11 = shl i32 %2, 11
  %12 = add i32 %10, %11
  %13 = or i32 %12, 1688
  %14 = getelementptr i8, ptr %8, i32 %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %3) #3, !srcloc !9
  %15 = load ptr, ptr %7, align 4
  %16 = shl i32 %2, 2
  %17 = add i32 %9, 5245968
  %18 = add i32 %17, %16
  %19 = getelementptr i8, ptr %15, i32 %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %3) #3, !srcloc !9
  %20 = load ptr, ptr %7, align 4
  %21 = or i32 %12, 136
  %22 = getelementptr i8, ptr %20, i32 %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %3) #3, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_main(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_unkn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_tpc_nr(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf117_grctx_generate_rop_mapping(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_alpha_beta_tables(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf117_grctx_generate_dist_skip_table(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gm107_grctx_generate_r406500(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4220160
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 1) #3, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_gpc_tpc_nr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gm107_grctx_generate_r419e00(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4300288
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  %8 = or i32 %7, 8421504
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 4300288
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #3, !srcloc !9
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 4299980
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  %14 = or i32 %13, -2147483648
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr i8, ptr %15, i32 4299980
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #3, !srcloc !9
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr i8, ptr %17, i32 4300672
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  %20 = or i32 %19, -2147483648
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr i8, ptr %21, i32 4300672
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #3, !srcloc !9
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr i8, ptr %23, i32 4300680
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  %26 = or i32 %25, -2147483648
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr i8, ptr %27, i32 4300680
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #3, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

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
!8 = !{i64 2151543926}
!9 = !{i64 4002833}
!10 = !{i64 4003251}
!11 = !{i64 2151542704}
