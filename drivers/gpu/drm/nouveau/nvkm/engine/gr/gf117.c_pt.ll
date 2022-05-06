; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/gr/gf117.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf117.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gf100_gr_init = type { i32, i8, i32, i32 }
%struct.gf100_gr_fwif = type { i32, ptr, ptr, ptr, ptr }
%struct.gf100_gr_pack = type { ptr, i32 }
%struct.gf100_gr_ucode = type { %struct.nvkm_blob, %struct.nvkm_blob }
%struct.nvkm_blob = type { ptr, i32 }
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

@gf117_gr_init_pes_0 = dso_local constant [6 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4308484, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4308488, i8 1, i32 4, i32 4 }, %struct.gf100_gr_init { i32 4308492, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4308496, i8 1, i32 4, i32 3902407 }, %struct.gf100_gr_init { i32 4308500, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf117_gr_init_wwdx_0 = dso_local constant [4 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4308948, i8 1, i32 4, i32 8388608 }, %struct.gf100_gr_init { i32 4308956, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4308984, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf117_gr_init_cbm_0 = dso_local constant [3 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4308684, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4308712, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf117_gr_fwif = internal constant [3 x %struct.gf100_gr_fwif] [%struct.gf100_gr_fwif { i32 -1, ptr @gf100_gr_load, ptr @gf117_gr, ptr null, ptr null }, %struct.gf100_gr_fwif { i32 -1, ptr @gf100_gr_nofw, ptr @gf117_gr, ptr null, ptr null }, %struct.gf100_gr_fwif zeroinitializer], align 4
@gf117_gr_pack_mmio = internal constant [28 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf100_gr_init_main_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_fe_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_pri_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_rstr2d_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_gr_init_pd_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_gr_init_ds_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_scc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_gr_init_prop_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf108_gr_init_gpc_unk_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_setup_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_crstr_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf108_gr_init_setup_1, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_zcull_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_gr_init_gpm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_gr_init_gpc_unk_1, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_gcc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_tpccs_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_gr_init_tex_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf117_gr_init_pe_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_l1c_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_mpc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_gr_init_sm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf117_gr_init_pes_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf117_gr_init_wwdx_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf117_gr_init_cbm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_be_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_gr_init_fe_1, i32 0 }, %struct.gf100_gr_pack zeroinitializer], align 4
@gf117_gr_fecs_ucode = internal global %struct.gf100_gr_ucode { %struct.nvkm_blob { ptr @gf117_grhub_code, i32 3072 }, %struct.nvkm_blob { ptr @gf117_grhub_data, i32 772 } }, align 4
@gf117_gr_gpccs_ucode = internal global %struct.gf100_gr_ucode { %struct.nvkm_blob { ptr @gf117_grgpc_code, i32 1792 }, %struct.nvkm_blob { ptr @gf117_grgpc_data, i32 108 } }, align 4
@gf117_grctx = external dso_local constant %struct.gf100_grctx_func, align 4
@gf100_gr_zbc = external dso_local constant %struct.gf100_gr_func_zbc, align 4
@gf100_fermi = external dso_local constant %struct.nvkm_object_func, align 4
@gf117_gr = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [8 x %struct.nvkm_sclass] } { ptr @gf100_gr_oneinit_tiles, ptr @gf100_gr_oneinit_sm_id, ptr @gf100_gr_init, ptr null, ptr @gf100_gr_init_gpc_mmu, ptr null, ptr null, ptr @gf100_gr_init_vsc_stream_master, ptr @gf117_gr_init_zcull, ptr @gf100_gr_init_num_active_ltcs, ptr null, ptr null, ptr null, ptr null, ptr @gf100_gr_init_fecs_exceptions, ptr null, ptr @gf100_gr_init_40601c, ptr null, ptr @gf100_gr_init_419cc0, ptr @gf100_gr_init_419eb4, ptr null, ptr null, ptr @gf100_gr_init_tex_hww_esr, ptr null, ptr @gf100_gr_init_shader_exceptions, ptr @gf100_gr_init_400054, ptr null, ptr @gf100_gr_trap_mp, ptr null, ptr @gf117_gr_pack_mmio, %struct.anon { ptr @gf117_gr_fecs_ucode }, %struct.anon.0 { ptr @gf117_gr_gpccs_ucode }, ptr @gf100_gr_rops, i32 0, i32 0, i32 1, ptr @gf117_grctx, ptr null, ptr @gf100_gr_zbc, [8 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 36909, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 36921, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 37015, ptr @gf100_fermi, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 37271, ptr @gf100_fermi, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 37527, ptr @gf100_fermi, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 37056, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 37312, ptr null, ptr null }, %struct.nvkm_sclass zeroinitializer] }, align 4
@gf100_gr_init_main_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_fe_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_pri_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_rstr2d_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf119_gr_init_pd_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf119_gr_init_ds_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_scc_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf119_gr_init_prop_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf108_gr_init_gpc_unk_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_setup_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_crstr_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf108_gr_init_setup_1 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_zcull_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf119_gr_init_gpm_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf119_gr_init_gpc_unk_1 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_gcc_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_tpccs_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf119_gr_init_tex_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf117_gr_init_pe_0 = internal constant [5 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4298764, i8 1, i32 4, i32 16 }, %struct.gf100_gr_init { i32 4298820, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4298828, i8 1, i32 4, i32 23496 }, %struct.gf100_gr_init { i32 4298832, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_gr_init_l1c_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_mpc_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf119_gr_init_sm_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_be_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf119_gr_init_fe_1 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf117_grhub_data = internal global [193 x i32] [i32 768, i32 772, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68675868], align 4
@gf117_grhub_code = internal global <{ [724 x i32], [44 x i32] }> <{ [724 x i32] [i32 60493557, i32 -1744775016, i32 -2031091239, i32 76134408, i32 -267641868, i32 569705207, i32 16253822, i32 -1241016124, i32 -1917123708, i32 142652928, i32 -2147447168, i32 -1867120241, i32 261419009, i32 -134096512, i32 20050944, i32 -1744775016, i32 -1984429607, i32 554431492, i32 -1241019964, i32 -1648688236, i32 143701504, i32 -1744789864, i32 -2135555681, i32 260370433, i32 -201271168, i32 16253234, i32 -268243783, i32 133242825, i32 66112000, i32 839681, i32 -940505923, i32 -1007629824, i32 13422337, i32 -199242552, i32 -1477381349, i32 270660870, i32 16249089, i32 32764107, i32 -134152241, i32 520448, i32 17035468, i32 -1124069424, i32 49068292, i32 -266352144, i32 133242569, i32 66112000, i32 839681, i32 -940505923, i32 -1007629824, i32 13422337, i32 -199242552, i32 16315163, i32 -1712286531, i32 520448, i32 33812495, i32 -1124070960, i32 520452, i32 33812486, i32 -1124070704, i32 8909060, i32 25423872, i32 -16742193, i32 469010570, i32 -258687501, i32 133234841, i32 66066176, i32 643074, i32 16254141, i32 -1712286531, i32 520448, i32 33812495, i32 -1124070960, i32 520452, i32 33812486, i32 -1124070704, i32 8909060, i32 25423872, i32 -16742193, i32 200575114, i32 -258687501, i32 133234841, i32 66066176, i32 643074, i32 16254141, i32 -392653635, i32 444970496, i32 -1241415498, i32 -1732574588, i32 81835520, i32 -201003080, i32 -1615205605, i32 -1124009982, i32 26865812, i32 251660273, i32 -805174288, i32 79495177, i32 -1141009219, i32 302773253, i32 -1006630927, i32 -805239824, i32 79495179, i32 -50292240, i32 200541678, i32 520478, i32 17035462, i32 -1124069680, i32 520452, i32 17035463, i32 -1124069424, i32 26865668, i32 -1241470008, i32 -1175449420, i32 28231692, i32 -49158986, i32 133236158, i32 66110720, i32 774145, i32 -403635011, i32 -470760192, i32 15650561, i32 -199236368, i32 -828837109, i32 99220736, i32 -939522063, i32 -805239824, i32 79495182, i32 -1207648074, i32 468976845, i32 44812504, i32 -249619468, i32 -255524681, i32 -1144061517, i32 531951616, i32 -200231760, i32 -1477382117, i32 -803081211, i32 -936702220, i32 -1263140693, i32 213512208, i32 -250430992, i32 -255524857, i32 198181123, i32 -251347712, i32 -255524681, i32 -1144061517, i32 314296320, i32 -1108141068, i32 26865812, i32 385878001, i32 -805174288, i32 79495177, i32 -1594294024, i32 -201152528, i32 -1594044383, i32 -1745878792, i32 -66588404, i32 33812554, i32 -1124070960, i32 1579283716, i32 -268371966, i32 133238167, i32 66079484, i32 643074, i32 569705661, i32 16253534, i32 -250624016, i32 -263193593, i32 214958595, i32 -268124928, i32 133237703, i32 66079484, i32 839682, i32 133235901, i32 66080764, i32 970754, i32 -940571459, i32 -66588406, i32 33812554, i32 -1124070192, i32 1579283716, i32 -1124009982, i32 60420244, i32 251660273, i32 -805174288, i32 79495177, i32 40509941, i32 -184293392, i32 -1123904479, i32 -66588220, i32 33812551, i32 -1124070192, i32 29880324, i32 1258031089, i32 -805174288, i32 79495180, i32 39723509, i32 -251589486, i32 -263783417, i32 214958595, i32 -268124928, i32 133235399, i32 66079484, i32 839682, i32 569705661, i32 569705054, i32 -2014248321, i32 -2081406464, i32 9957634, i32 43249696, i32 -1795122737, i32 -1898968834, i32 1083101184, i32 -1233089841, i32 -1598683483, i32 15383297, i32 -1241218890, i32 468976018, i32 149206760, i32 -1108152388, i32 60420244, i32 385878001, i32 -805174288, i32 79495177, i32 133234936, i32 66061568, i32 1036290, i32 -135265091, i32 520449, i32 50589703, i32 -1124069424, i32 -1124009980, i32 523780, i32 1107302385, i32 -822078480, i32 300351505, i32 347472137, i32 1375752, i32 -251516944, i32 -267255801, i32 47185923, i32 -251347712, i32 -33109993, i32 616366096, i32 117442545, i32 -805305360, i32 79495170, i32 537077745, i32 16779249, i32 -805239824, i32 79495170, i32 537143281, i32 17041393, i32 -805239824, i32 79495170, i32 537602033, i32 17303537, i32 -805239824, i32 79495170, i32 537667569, i32 18614257, i32 -805239824, i32 79495170, i32 -251591790, i32 -267845625, i32 63963907, i32 -251347712, i32 -259587033, i32 133234723, i32 66061312, i32 184320, i32 670041277, i32 520452, i32 258051, i32 -1124072752, i32 271709188, i32 -1778063375, i32 -197073936, i32 -21403615, i32 -1863203070, i32 -268238464, i32 260055028, i32 18345986, i32 -1241243717, i32 133234962, i32 66061056, i32 118785, i32 133235901, i32 66061312, i32 118785, i32 401671357, i32 -135266048, i32 287438082, i32 589427976, i32 284684296, i32 141566453, i32 -1744826728, i32 569704719, i32 345309520, i32 520456, i32 17035456, i32 -1124072240, i32 520452, i32 17035457, i32 -1124072240, i32 3192580, i32 2079507, i32 -251464266, i32 -254607353, i32 265289987, i32 -1241203456, i32 280365077, i32 135575041, i32 -184410183, i32 -1157442783, i32 60293151, i32 4714754, i32 1346629664, i32 134500000, i32 -201187399, i32 1319148833, i32 -188940020, i32 -1600314892, i32 -201259954, i32 1319148833, i32 -135266048, i32 -1658719230, i32 134237856, i32 -932699660, i32 200548351, i32 72261882, i32 1747055624, i32 -1224728645, i32 -1233125312, i32 468975922, i32 16249022, i32 141566453, i32 -184485904, i32 -251129567, i32 -268369913, i32 30409219, i32 -1123762944, i32 521793556, i32 134219761, i32 -805174288, i32 79495169, i32 -201316108, i32 -672137167, i32 958526480, i32 -1309408780, i32 -180354588, i32 -1124013797, i32 77197460, i32 251660273, i32 -805174288, i32 79495177, i32 -1073735695, i32 -821947408, i32 670105617, i32 602980608, i32 2281218, i32 -182512696, i32 -939489013, i32 200548131, i32 -1189021342, i32 -1799552494, i32 -251160080, i32 -267452409, i32 164626947, i32 -201016064, i32 838074674, i32 1143076098, i32 -258687734, i32 133236633, i32 66066176, i32 643074, i32 553387197, i32 -1712286531, i32 520454, i32 33812495, i32 -1124070960, i32 20050948, i32 172237301, i32 -1712286531, i32 520454, i32 33812503, i32 -1124070960, i32 856617988, i32 314122489, i32 20116482, i32 -184405260, i32 -66436063, i32 520480, i32 33812672, i32 -1124072752, i32 319747076, i32 -199285816, i32 838077707, i32 36893697, i32 172237301, i32 -251582480, i32 -255655929, i32 47186435, i32 -1123762944, i32 77197460, i32 385878001, i32 -805174288, i32 79495177, i32 -15855883, i32 -201202512, i32 -222753509, i32 -735972094, i32 1175385097, i32 -201136976, i32 -1799540197, i32 -251160080, i32 -267452409, i32 164626947, i32 -201016064, i32 854851890, i32 1143076098, i32 -258687734, i32 133236633, i32 66066176, i32 643074, i32 250873021, i32 284136465, i32 -184420880, i32 -184320479, i32 -1107379442, i32 522842148, i32 134219761, i32 -805174288, i32 79495170, i32 -22671627, i32 -2131164935, i32 -117339906, i32 -107939456, i32 -105842272, i32 -102696496, i32 -251347472, i32 -268304217, i32 -1429274461, i32 78365696, i32 -265286668, i32 -403631913, i32 -470803968, i32 15650560, i32 419493873, i32 -822021136, i32 569639167, i32 11581188, i32 31977476, i32 486541297, i32 -805305360, i32 79495182, i32 16821220, i32 -267580428, i32 -403631913, i32 569655297, i32 11265028, i32 1812722692, i32 118024177, i32 -197073936, i32 -4626399, i32 520450, i32 33812484, i32 -1124069424, i32 82309380, i32 1088679943, i32 -1184357900, i32 133235455, i32 66061056, i32 1036290, i32 -20511555, i32 49189968, i32 117503985, i32 -1153371152, i32 569639151, i32 520552, i32 33812482, i32 -1124069424, i32 66580484, i32 58597877, i32 16824305, i32 -251478087, i32 -268352281, i32 569655523, i32 79163805, i32 -5194491, i32 200586411, i32 520463, i32 50589703, i32 -1124070448, i32 520452, i32 258049, i32 -1124070704, i32 -51315708, i32 -53412640, i32 -56558416, i32 -25101168, i32 -2130968440, i32 854851836, i32 -268306432, i32 -4652553, i32 1625813250, i32 1088680001, i32 -241360396, i32 -264150809, i32 569655523, i32 50313576, i32 -200998968, i32 16314379, i32 -4590403, i32 1625813250, i32 1088680001, i32 -123919884, i32 284553216, i32 -251461703, i32 -264146713, i32 569655523, i32 -251594595, i32 -264146713, i32 569655523, i32 50313576, i32 -200215312, i32 16314395, i32 33613809, i32 -264182288, i32 -437247771, i32 520464, i32 17035397, i32 -1124069680, i32 150466564, i32 -201198922, i32 -437125861, i32 -437189632, i32 133234944, i32 66094336, i32 970753, i32 16254141, i32 452986865, i32 -805174288, i32 79495183, i32 -251461703, i32 -259386137, i32 569655523, i32 50313629, i32 -1469257743, i32 -197008400, i32 16293153, i32 -2080372751, i32 -805174288, i32 79495183, i32 -2080311311, i32 -821890064, i32 -196353, i32 -216271867, i32 -1799552776, i32 -251291152, i32 -267452409, i32 164626947, i32 -268124928, i32 569642151, i32 -235618864, i32 -259457017, i32 265290243, i32 -251347712, i32 -255787001, i32 47186435, i32 -251347712, i32 -259850233, i32 47186435, i32 -268124928, i32 569706487, i32 133236888, i32 66109440, i32 184322, i32 201196733, i32 522907648, i32 -1241242442, i32 -1799552480, i32 -251094544, i32 -267452409, i32 164626947, i32 -251347712, i32 -259981305, i32 47186435, i32 -251347712, i32 -251658201, i32 -260046813, i32 133235237, i32 66095104, i32 184322, i32 401605821, i32 2617616, i32 35909634, i32 -133885190, i32 -258687741, i32 133236889, i32 66066176, i32 643074, i32 26739901, i32 404010625, i32 -1233124712, i32 318572581, i32 369197061, i32 -1712286531, i32 520457, i32 33812495, i32 -1124070960, i32 520452, i32 33812609, i32 -1124073008, i32 19394564, i32 -2013263887, i32 -805174288, i32 79495170, i32 16783345, i32 -100264976, i32 66585857, i32 -1712286531, i32 520457, i32 33812503, i32 -1124070960, i32 -258687740, i32 133236121, i32 66066176, i32 643074, i32 16254141, i32 131801589, i32 146153973, i32 -200497168, i32 -135213023, i32 -1742605051, i32 2225416, i32 -1744766968, i32 133251331, i32 66093312, i32 249858, i32 884802749, i32 -184601404, i32 1475415835, i32 1408238080, i32 87423494, i32 1318585336, i32 -2125490048, i32 -1231216140, i32 313919536, i32 -551816191, i32 -250215528, i32 -259981305, i32 63963651, i32 -2147173120, i32 401686528, i32 334496000, i32 100792838, i32 16253944, i32 -251336720, i32 -268304377, i32 248513283, i32 -251347712, i32 -268435225, i32 -288422941, i32 15003904, i32 -233049056, i32 -200928780, i32 -135261950, i32 1881273616, i32 -618531576, i32 470938631, i32 -184354832, i32 -184020703, i32 -184016095, i32 -1123534815, i32 287438324, i32 -1239288568, i32 369203208, i32 133244093, i32 66061568, i32 184321, i32 532219069, i32 15200514, i32 1105457317, i32 -258137612, i32 753926652, i32 19183106, i32 -1190792451, i32 -403635457, i32 -470768380, i32 -1658719167, i32 40509941, i32 133244093, i32 66078716, i32 184322, i32 753927357, i32 52475393, i32 1258031089, i32 -805174288, i32 79495170, i32 -268325648, i32 -1209006427, i32 825344, i32 -268366440, i32 569704679, i32 -1477443217, i32 270660872, i32 1579283713, i32 318895106, i32 -200497168, i32 -135213023, i32 -1742605051, i32 839054344, i32 -184354832, i32 -1123544799, i32 1881273844, i32 2132931848, i32 589427970, i32 -168510200, i32 -200797919, i32 26742801, i32 85065024, i32 -184087564, i32 -183898335, i32 -133693407], [44 x i32] zeroinitializer }>, align 4
@gf117_grgpc_code = internal global <{ [431 x i32], [17 x i32] }> <{ [431 x i32] [i32 60886773, i32 -1744775016, i32 -2031091239, i32 76134408, i32 -267641868, i32 569705207, i32 16253822, i32 -1241016124, i32 -1917123708, i32 142652928, i32 -2147447168, i32 -1867120241, i32 261419009, i32 -134096512, i32 20050944, i32 -1744775016, i32 -1984429607, i32 554431492, i32 -1241019964, i32 -1648688236, i32 143701504, i32 -1744789864, i32 -2135555681, i32 260370433, i32 -201271168, i32 16253234, i32 -268243783, i32 133242825, i32 66112000, i32 839681, i32 -940505923, i32 -1007629824, i32 13422337, i32 -199242552, i32 -1477381349, i32 270660870, i32 16249089, i32 32764107, i32 -134152241, i32 520448, i32 17035468, i32 -1124069424, i32 49068292, i32 -266352144, i32 133242569, i32 66112000, i32 839681, i32 -940505923, i32 -1007629824, i32 13422337, i32 -199242552, i32 16315163, i32 -1712286531, i32 520448, i32 33812495, i32 -1124070960, i32 520452, i32 33812486, i32 -1124070704, i32 8909060, i32 25423872, i32 -16742193, i32 469010570, i32 -258687501, i32 133234841, i32 66066176, i32 643074, i32 16254141, i32 -1712286531, i32 520448, i32 33812495, i32 -1124070960, i32 520452, i32 33812486, i32 -1124070704, i32 8909060, i32 25423872, i32 -16742193, i32 200575114, i32 -258687501, i32 133234841, i32 66066176, i32 643074, i32 16254141, i32 -392653635, i32 444970496, i32 -1241415498, i32 -1732574588, i32 81835520, i32 -201003080, i32 -1615205605, i32 -1124009982, i32 26865812, i32 251660273, i32 -805174288, i32 79495177, i32 -1141009219, i32 302773253, i32 -1006630927, i32 -805239824, i32 79495179, i32 -50292240, i32 200541678, i32 520478, i32 17035462, i32 -1124069680, i32 520452, i32 17035463, i32 -1124069424, i32 26865668, i32 -1241470008, i32 -1175449420, i32 28231692, i32 -49158986, i32 133236158, i32 66110720, i32 774145, i32 -403635011, i32 -470760192, i32 15650561, i32 -199236368, i32 -828837109, i32 99220736, i32 -939522063, i32 -805239824, i32 79495182, i32 -1207648074, i32 468976845, i32 44812504, i32 -249619468, i32 -255524681, i32 -1144061517, i32 531951616, i32 -200231760, i32 -1477382117, i32 -803081211, i32 -936702220, i32 -1263140693, i32 213512208, i32 -250430992, i32 -255524857, i32 198181123, i32 -251347712, i32 -255524681, i32 -1144061517, i32 314296320, i32 -1108141068, i32 26865812, i32 385878001, i32 -805174288, i32 79495177, i32 -1594294024, i32 -201152528, i32 -1594044383, i32 -1745878792, i32 -66588404, i32 33812554, i32 -1124070960, i32 1579283716, i32 -268371966, i32 133238167, i32 66079484, i32 643074, i32 569705661, i32 16253534, i32 -250624016, i32 -263193593, i32 214958595, i32 -268124928, i32 133237703, i32 66079484, i32 839682, i32 133235901, i32 66080764, i32 970754, i32 -940571459, i32 -66588406, i32 33812554, i32 -1124070192, i32 1579283716, i32 -1124009982, i32 60420244, i32 251660273, i32 -805174288, i32 79495177, i32 40509941, i32 -184293392, i32 -1123904479, i32 -66588220, i32 33812551, i32 -1124070192, i32 29880324, i32 1258031089, i32 -805174288, i32 79495180, i32 39723509, i32 -251589486, i32 -263783417, i32 214958595, i32 -268124928, i32 133235399, i32 66079484, i32 839682, i32 569705661, i32 569705054, i32 -2014248321, i32 -2081406464, i32 9957634, i32 43249696, i32 -1795122737, i32 -1898968834, i32 1083101184, i32 -1233089841, i32 -1598683483, i32 15383297, i32 -1241218890, i32 468976018, i32 149206760, i32 -1108152388, i32 60420244, i32 385878001, i32 -805174288, i32 79495177, i32 -520552200, i32 -251461703, i32 -258468633, i32 569655523, i32 33026205, i32 -251461703, i32 -258204441, i32 569655523, i32 -119472995, i32 -251347712, i32 -264110057, i32 298778643, i32 152168192, i32 135575041, i32 -268430082, i32 133235239, i32 66064896, i32 184320, i32 401671357, i32 285082949, i32 520448, i32 258055, i32 -1124073264, i32 69726212, i32 67110897, i32 -805305360, i32 79495170, i32 -250596876, i32 -259915737, i32 583991587, i32 20443136, i32 -1155586832, i32 850789426, i32 84049921, i32 -251264128, i32 -259653593, i32 583991587, i32 67272704, i32 -250665802, i32 -255262713, i32 47186179, i32 -251347712, i32 -267636505, i32 -437235485, i32 -1121665791, i32 -196821708, i32 -156211167, i32 252441600, i32 -1157498896, i32 1341981938, i32 19969541, i32 -1241440074, i32 649069792, i32 -501484543, i32 -2147024000, i32 670107652, i32 602931456, i32 2281218, i32 630535357, i32 520456, i32 17035456, i32 -1124071984, i32 520452, i32 17035457, i32 -1124071984, i32 956420, i32 -184479848, i32 -1157541855, i32 1069219887, i32 17733632, i32 -184414312, i32 -1744744415, i32 -268630770, i32 3062528, i32 -1744814405, i32 261620238, i32 1344402691, i32 118396929, i32 -1157566467, i32 1052442670, i32 37074432, i32 -754972687, i32 -805239824, i32 79495171, i32 -1240980042, i32 548800053, i32 19969537, i32 -1240980298, i32 800655412, i32 -752749310, i32 3128066, i32 -251641925, i32 -268369913, i32 63963651, i32 -1123762944, i32 522842148, i32 134219761, i32 -805174288, i32 79495170, i32 -201316108, i32 -672137167, i32 958526500, i32 -1326185996, i32 418645220, i32 25296414, i32 -1123670032, i32 68353312, i32 -50207562, i32 419300638, i32 19002624, i32 -653331450, i32 -267325548, i32 569704949, i32 250872702, i32 -117376564, i32 25755264, i32 -1862696711, i32 -1325817607, i32 -520498951, i32 79556857, i32 33597425, i32 -822041616, i32 -1413218134, i32 738980868, i32 -249243664, i32 -266731289, i32 -288423709, i32 16249088, i32 15986713, i32 -201261105, i32 -403700703, i32 520449, i32 258077, i32 -1124069680, i32 520452, i32 258049, i32 -1124070704, i32 -51315708, i32 -53412640, i32 -56558416, i32 -25101168, i32 -2130968440, i32 854851836, i32 -268306432, i32 244842999, i32 83802884, i32 -251461703, i32 -258729753, i32 569655523, i32 -268371811, i32 133243127, i32 66094336, i32 1036289, i32 -403700547, i32 31634952, i32 -235070476, i32 -251133707, i32 -251526923, i32 -259719161, i32 265289987, i32 -133907200, i32 520448, i32 33812609, i32 -1124069424, i32 118617092, i32 97722869, i32 40509941, i32 133244093, i32 66078716, i32 184322, i32 753927357, i32 52475393, i32 1258031089, i32 -805174288, i32 79495170, i32 -268325648, i32 -1208941915, i32 -1276116992, i32 67934288, i32 -1156594506, i32 211288252, i32 17668096, i32 -184490000, i32 -268341471, i32 -1208942164, i32 -1276100608, i32 67934288, i32 -1156594506, i32 211288252, i32 34445313, i32 -251261032, i32 -184024857, i32 -268341471, i32 -1510997588, i32 12054788, i32 1353969712, i32 -1241248616, i32 -1128591420, i32 34379776, i32 -1744630376, i32 -403634161, i32 569704960, i32 569704815, i32 32768606, i32 118682630, i32 41886197, i32 96150005, i32 248], [17 x i32] zeroinitializer }>, align 4
@gf117_grgpc_data = internal global <{ i32, i32, i32, i32, [23 x i32] }> <{ i32 108, i32 108, i32 108, i32 108, [23 x i32] zeroinitializer }>, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf117_gr_init_zcull(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [32 x i8], align 1
  %3 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 16
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = add nuw nsw i32 %7, 8388607
  %9 = udiv i32 %8, %7
  %10 = add i8 %6, 31
  %11 = and i8 %10, -32
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
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %123) #5, !srcloc !9
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
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 %142) #5, !srcloc !9
  %147 = load i8, ptr %5, align 1
  %148 = zext i8 %147 to i32
  %149 = or i32 %148, 262144
  %150 = load ptr, ptr %29, align 4
  %151 = add nuw nsw i32 %144, 5245200
  %152 = getelementptr i8, ptr %150, i32 %151
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 %149) #5, !srcloc !9
  %153 = load ptr, ptr %29, align 4
  %154 = add nuw nsw i32 %144, 5245208
  %155 = getelementptr i8, ptr %153, i32 %154
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 %9) #5, !srcloc !9
  %156 = add nuw nsw i32 %135, 1
  %157 = load i8, ptr %24, align 1
  %158 = zext i8 %157 to i32
  %159 = icmp ult i32 %156, %158
  br i1 %159, label %134, label %160

160:                                              ; preds = %134, %23
  %161 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %162 = load ptr, ptr %161, align 4
  %163 = getelementptr i8, ptr %162, i32 4308948
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %163, i32 %9) #5, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf117_gr_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @gf100_gr_new_(ptr noundef nonnull @gf117_gr_fwif, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #5
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_load(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_nofw(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_oneinit_tiles(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_oneinit_sm_id(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_init(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_gpc_mmu(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_vsc_stream_master(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_num_active_ltcs(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_fecs_exceptions(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_40601c(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_419cc0(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_419eb4(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_tex_hww_esr(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_shader_exceptions(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_400054(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_trap_mp(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_rops(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 2151504231}
!9 = !{i64 3963138}
