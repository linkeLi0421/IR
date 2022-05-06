; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/gr/gm107.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm107.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gf100_gr_init = type { i32, i8, i32, i32 }
%struct.anon.158 = type { i32, i32 }
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
%struct.nvbios_P0260E = type { i32 }
%struct.nvbios_P0260X = type { i32 }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.147, %struct.anon.148, i8, ptr, ptr }
%struct.anon.147 = type { %struct.mutex, %struct.nvkm_mm }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.148 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bit_entry = type { i8, i8, i16, i16 }
%struct.nvbios_init = type { ptr, i32, ptr, i32, i32, i32, i8, i32, i32, i32, i32 }

@gm107_gr_init_scc_0 = dso_local constant [2 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4227132, i8 1, i32 4, i32 16 }, %struct.gf100_gr_init zeroinitializer], align 4
@gm107_gr_init_prop_0 = dso_local constant [3 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4293640, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4293792, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gm107_gr_init_setup_1 = dso_local constant [4 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4294856, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4294864, i8 1, i32 4, i32 65536 }, %struct.gf100_gr_init { i32 4294868, i8 1, i32 4, i32 66049 }, %struct.gf100_gr_init zeroinitializer], align 4
@gm107_gr_init_zcull_0 = dso_local constant [7 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4294928, i8 1, i32 4, i32 65537 }, %struct.gf100_gr_init { i32 4294932, i8 1, i32 4, i32 769 }, %struct.gf100_gr_init { i32 4294936, i8 1, i32 4, i32 8388608 }, %struct.gf100_gr_init { i32 4294960, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295040, i8 1, i32 4, i32 2004318064 }, %struct.gf100_gr_init { i32 4295044, i8 3, i32 4, i32 2004318071 }, %struct.gf100_gr_init zeroinitializer], align 4
@gm107_gr_init_gpc_unk_1 = dso_local constant [5 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4295936, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4296448, i8 1, i32 4, i32 1024 }, %struct.gf100_gr_init { i32 4296456, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4296200, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gm107_gr_init_tex_0 = dso_local constant [10 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299440, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299448, i8 1, i32 4, i32 231 }, %struct.gf100_gr_init { i32 4299452, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299468, i8 1, i32 4, i32 255 }, %struct.gf100_gr_init { i32 4299456, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299432, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299472, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299488, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299504, i8 4, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gm107_gr_init_l1c_0 = dso_local constant [3 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299928, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299968, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gm107_gr_init_wwdx_0 = dso_local constant [3 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4308948, i8 1, i32 4, i32 8388608 }, %struct.gf100_gr_init { i32 4308956, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gm107_gr_init_cbm_0 = dso_local constant [2 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4308684, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gm107_gr_init_bios.regs = internal unnamed_addr constant [5 x %struct.anon.158] [%struct.anon.158 { i32 4300504, i32 4300512 }, %struct.anon.158 { i32 4299472, i32 4299476 }, %struct.anon.158 { i32 4299488, i32 4299492 }, %struct.anon.158 { i32 4299504, i32 4299508 }, %struct.anon.158 { i32 4299512, i32 4299516 }], align 4
@gm107_gr_fwif = internal constant [3 x %struct.gf100_gr_fwif] [%struct.gf100_gr_fwif { i32 -1, ptr @gf100_gr_load, ptr @gm107_gr, ptr null, ptr null }, %struct.gf100_gr_fwif { i32 -1, ptr @gf100_gr_nofw, ptr @gm107_gr, ptr null, ptr null }, %struct.gf100_gr_fwif zeroinitializer], align 4
@gm107_gr_pack_mmio = internal constant [32 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gm107_gr_init_main_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk110_gr_init_fe_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_pri_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_rstr2d_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_pd_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_gr_init_ds_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_gr_init_scc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_gr_init_sked_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk110_gr_init_cwd_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_gr_init_prop_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk208_gr_init_gpc_unk_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_setup_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_crstr_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_gr_init_setup_1, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_gr_init_zcull_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_gpm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_gr_init_gpc_unk_1, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_gcc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk104_gr_init_gpc_unk_2, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_gr_init_tpccs_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_gr_init_tex_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_gr_init_pe_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_gr_init_l1c_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_mpc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_gr_init_sm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_gr_init_l1c_1, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_gr_init_pes_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_gr_init_wwdx_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_gr_init_cbm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_gr_init_be_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_gr_init_sm_1, i32 0 }, %struct.gf100_gr_pack zeroinitializer], align 4
@gm107_gr_fecs_ucode = internal global %struct.gf100_gr_ucode { %struct.nvkm_blob { ptr @gm107_grhub_code, i32 2560 }, %struct.nvkm_blob { ptr @gm107_grhub_data, i32 772 } }, align 4
@gm107_gr_gpccs_ucode = internal global %struct.gf100_gr_ucode { %struct.nvkm_blob { ptr @gm107_grgpc_code, i32 2048 }, %struct.nvkm_blob { ptr @gm107_grgpc_data, i32 108 } }, align 4
@gm107_grctx = external dso_local constant %struct.gf100_grctx_func, align 4
@gf100_gr_zbc = external dso_local constant %struct.gf100_gr_func_zbc, align 4
@gf100_fermi = external dso_local constant %struct.nvkm_object_func, align 4
@gm107_gr = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [5 x %struct.nvkm_sclass] } { ptr @gf100_gr_oneinit_tiles, ptr @gf100_gr_oneinit_sm_id, ptr @gf100_gr_init, ptr null, ptr @gm107_gr_init_gpc_mmu, ptr null, ptr @gm107_gr_init_bios, ptr @gk104_gr_init_vsc_stream_master, ptr @gf117_gr_init_zcull, ptr @gf100_gr_init_num_active_ltcs, ptr @gk104_gr_init_rop_active_fbps, ptr @gm107_gr_init_bios_2, ptr null, ptr null, ptr @gf100_gr_init_fecs_exceptions, ptr null, ptr null, ptr @gk104_gr_init_sked_hww_esr, ptr @gf100_gr_init_419cc0, ptr null, ptr null, ptr @gk104_gr_init_ppc_exceptions, ptr @gf100_gr_init_tex_hww_esr, ptr @gm107_gr_init_504430, ptr @gm107_gr_init_shader_exceptions, ptr @gm107_gr_init_400054, ptr null, ptr @gf100_gr_trap_mp, ptr null, ptr @gm107_gr_pack_mmio, %struct.anon { ptr @gm107_gr_fecs_ucode }, %struct.anon.0 { ptr @gm107_gr_gpccs_ucode }, ptr @gf100_gr_rops, i32 0, i32 0, i32 2, ptr @gm107_grctx, ptr null, ptr @gf100_gr_zbc, [5 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 36909, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 41280, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 45207, ptr @gf100_fermi, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 45248, ptr null, ptr null }, %struct.nvkm_sclass zeroinitializer] }, align 4
@gm107_gr_init_main_0 = internal constant [16 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4229132, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4229392, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4229508, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4303008, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4194432, i8 1, i32 4, i32 3146690 }, %struct.gf100_gr_init { i32 4194440, i8 1, i32 4, i32 114663 }, %struct.gf100_gr_init { i32 4194444, i8 1, i32 4, i32 393216 }, %struct.gf100_gr_init { i32 4194448, i8 1, i32 4, i32 48 }, %struct.gf100_gr_init { i32 4194620, i8 1, i32 4, i32 3736051 }, %struct.gf100_gr_init { i32 4194624, i8 1, i32 4, i32 256 }, %struct.gf100_gr_init { i32 4194628, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4194632, i8 1, i32 4, i32 272 }, %struct.gf100_gr_init { i32 4194616, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4194608, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4194596, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init zeroinitializer], align 4
@gk110_gr_init_fe_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_pri_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_rstr2d_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_pd_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gm107_gr_init_ds_0 = internal constant [5 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4216900, i8 1, i32 4, i32 16777215 }, %struct.gf100_gr_init { i32 4216912, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4217088, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4217096, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gm107_gr_init_sked_0 = internal constant [4 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4222992, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4223040, i8 1, i32 4, i32 1078199332 }, %struct.gf100_gr_init { i32 4223048, i8 1, i32 4, i32 10 }, %struct.gf100_gr_init zeroinitializer], align 4
@gk110_gr_init_cwd_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk208_gr_init_gpc_unk_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_setup_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_crstr_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_gpm_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_gcc_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk104_gr_init_gpc_unk_2 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gm107_gr_init_tpccs_0 = internal constant [10 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4300228, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300232, i8 1, i32 4, i32 1281 }, %struct.gf100_gr_init { i32 4300240, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300244, i8 1, i32 4, i32 256 }, %struct.gf100_gr_init { i32 4300248, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4300252, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 4300256, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4300044, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300048, i8 1, i32 4, i32 20 }, %struct.gf100_gr_init zeroinitializer], align 4
@gm107_gr_init_pe_0 = internal constant [8 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299008, i8 1, i32 4, i32 255 }, %struct.gf100_gr_init { i32 4298764, i8 1, i32 4, i32 16 }, %struct.gf100_gr_init { i32 4298820, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4298808, i8 1, i32 4, i32 255 }, %struct.gf100_gr_init { i32 4298832, i8 1, i32 4, i32 4 }, %struct.gf100_gr_init { i32 4298836, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4298900, i8 3, i32 4, i32 1049601 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_gr_init_mpc_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gm107_gr_init_sm_0 = internal constant [15 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4300336, i8 1, i32 4, i32 255 }, %struct.gf100_gr_init { i32 4300288, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300448, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300516, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300452, i8 1, i32 4, i32 256 }, %struct.gf100_gr_init { i32 4300456, i8 1, i32 4, i32 16777216 }, %struct.gf100_gr_init { i32 4300520, i8 1, i32 4, i32 145 }, %struct.gf100_gr_init { i32 4300468, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300476, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300508, i8 1, i32 4, i32 792592 }, %struct.gf100_gr_init { i32 4300504, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300512, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300660, i8 1, i32 4, i32 20821 }, %struct.gf100_gr_init { i32 4300672, i8 4, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gm107_gr_init_l1c_1 = internal constant [4 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299980, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299904, i8 1, i32 4, i32 1056989218 }, %struct.gf100_gr_init { i32 4299912, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gm107_gr_init_pes_0 = internal constant [8 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4308560, i8 1, i32 4, i32 255 }, %struct.gf100_gr_init { i32 4308484, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4308488, i8 1, i32 4, i32 4 }, %struct.gf100_gr_init { i32 4308492, i8 1, i32 4, i32 8 }, %struct.gf100_gr_init { i32 4308496, i8 1, i32 4, i32 238783431 }, %struct.gf100_gr_init { i32 4308500, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4308540, i8 5, i32 4, i32 1049601 }, %struct.gf100_gr_init zeroinitializer], align 4
@gm107_gr_init_be_0 = internal constant [20 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4229264, i8 1, i32 4, i32 255 }, %struct.gf100_gr_init { i32 4229200, i8 1, i32 4, i32 4 }, %struct.gf100_gr_init { i32 4229240, i8 1, i32 4, i32 13112835 }, %struct.gf100_gr_init { i32 4229244, i8 1, i32 4, i32 -2141965262 }, %struct.gf100_gr_init { i32 4229248, i8 1, i32 4, i32 1071134 }, %struct.gf100_gr_init { i32 4229252, i8 1, i32 4, i32 4613 }, %struct.gf100_gr_init { i32 4229492, i8 1, i32 4, i32 255 }, %struct.gf100_gr_init { i32 4229396, i8 8, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4229456, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4229460, i8 1, i32 4, i32 65535 }, %struct.gf100_gr_init { i32 4229464, i8 1, i32 4, i32 52 }, %struct.gf100_gr_init { i32 4229468, i8 1, i32 4, i32 -2060345341 }, %struct.gf100_gr_init { i32 4229472, i8 1, i32 4, i32 90282074 }, %struct.gf100_gr_init { i32 4229476, i8 1, i32 4, i32 81878095 }, %struct.gf100_gr_init { i32 4229480, i8 1, i32 4, i32 41977907 }, %struct.gf100_gr_init { i32 4229484, i8 1, i32 4, i32 32515128 }, %struct.gf100_gr_init { i32 4229488, i8 1, i32 4, i32 76800 }, %struct.gf100_gr_init { i32 4229512, i8 1, i32 4, i32 134480385 }, %struct.gf100_gr_init { i32 4229516, i8 1, i32 4, i32 -2143281136 }, %struct.gf100_gr_init zeroinitializer], align 4
@gm107_gr_init_sm_1 = internal constant [3 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4300380, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300376, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gm107_grhub_data = internal global [193 x i32] [i32 768, i32 772, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68675868], align 4
@gm107_grhub_code = internal global <{ [602 x i32], [38 x i32] }> <{ [602 x i32] [i32 51252981, i32 -1744775016, i32 -2031091239, i32 -192306168, i32 34540315, i32 194686, i32 -1731985160, i32 59028999, i32 -1241477701, i32 -1900738432, i32 26195200, i32 -268332874, i32 -642445420, i32 -201263103, i32 -661126863, i32 31037440, i32 200575396, i32 126469153, i32 -1157393226, i32 -1867120483, i32 10393608, i32 -1241407592, i32 -2064645760, i32 14202127, i32 -134139148, i32 -252923392, i32 8396745, i32 217448906, i32 -1945846528, i32 -821966336, i32 -859307828, i32 -165940193, i32 -327285238, i32 9371648, i32 -3210805, i32 -2147420160, i32 -167654400, i32 79495183, i32 -906957646, i32 516550687, i32 30015616, i32 -1124070154, i32 -905933820, i32 13422337, i32 -199242552, i32 16315931, i32 -1712286531, i32 922779648, i32 652802, i32 8389821, i32 183894534, i32 -2012955392, i32 -822018048, i32 -1962999672, i32 -165940088, i32 -1712286531, i32 385908736, i32 652802, i32 16254141, i32 -1712286531, i32 922779648, i32 652802, i32 8389821, i32 183894534, i32 -2012955392, i32 -822018048, i32 -1962999672, i32 -166988664, i32 -1712286531, i32 385908736, i32 652802, i32 16254141, i32 -392653635, i32 444970496, i32 -1241415498, i32 -1732574588, i32 81835520, i32 469036964, i32 -123751700, i32 -258687744, i32 8389017, i32 167117367, i32 -1123762944, i32 96206228, i32 -2146497548, i32 -167656448, i32 79495179, i32 -50292240, i32 200541678, i32 -973045736, i32 980481, i32 8389821, i32 267780551, i32 -268124928, i32 -1412955751, i32 280278528, i32 -938690064, i32 -457834066, i32 96402705, i32 29687936, i32 -1124070410, i32 -989819388, i32 15650561, i32 -199236368, i32 -828836341, i32 99220736, i32 29884544, i32 -1124069642, i32 79738372, i32 469028260, i32 44812511, i32 -1961092108, i32 -821967616, i32 -1259339589, i32 280277023, i32 183704564, i32 12090885, i32 621736960, i32 -1241470008, i32 -1175449420, i32 314175500, i32 29687936, i32 -1124070410, i32 -989820156, i32 12308225, i32 -200098872, i32 -1799490021, i32 -2147378704, i32 -167635200, i32 79495177, i32 -1594294024, i32 -1199701494, i32 -1594097664, i32 201916664, i32 38468736, i32 -1124070922, i32 34242052, i32 151058432, i32 1258061837, i32 652802, i32 176030909, i32 16252930, i32 -58716404, i32 217449039, i32 201637120, i32 1258061835, i32 849410, i32 -58719043, i32 251003471, i32 201637120, i32 1258061834, i32 849410, i32 176030909, i32 16252930, i32 -1712286531, i32 922779651, i32 652802, i32 377357501, i32 51249154, i32 145534, i32 -58669891, i32 217449031, i32 201637120, i32 1258061825, i32 849410, i32 176030909, i32 210894850, i32 1190952961, i32 849410, i32 34342077, i32 38468736, i32 -1124070154, i32 34242052, i32 36142592, i32 1107331072, i32 536905986, i32 10080002, i32 -167182699, i32 -1896480626, i32 -2138386624, i32 -1241078346, i32 -356843104, i32 75544064, i32 -201223498, i32 -457775077, i32 -219169784, i32 -1712286531, i32 385908739, i32 652802, i32 16254141, i32 33882240, i32 -1124069386, i32 -2147414268, i32 -167573760, i32 79495183, i32 79495416, i32 1090521086, i32 298795520, i32 152168192, i32 135575041, i32 33559806, i32 302006274, i32 -1124072714, i32 97140996, i32 -1124069122, i32 117456932, i32 -1124072714, i32 537084420, i32 16842880, i32 -1124072714, i32 537149956, i32 16843904, i32 -1124072714, i32 537608708, i32 16844928, i32 -1124072714, i32 537674244, i32 16850048, i32 -1124072714, i32 17011204, i32 50921600, i32 -1124072458, i32 -2029747708, i32 67125248, i32 -1124072714, i32 1074004484, i32 49677056, i32 -201016064, i32 76419121, i32 1702772886, i32 -21889024, i32 -1248792121, i32 -185597183, i32 34583839, i32 532349185, i32 18003460, i32 16973952, i32 -1124072970, i32 67141636, i32 128513, i32 4261053, i32 2114064129, i32 2113930925, i32 251659964, i32 117341712, i32 956416, i32 2113998744, i32 -1795161824, i32 8390676, i32 83231168, i32 -2147173120, i32 -167657216, i32 79495172, i32 318779575, i32 -1241505861, i32 8389365, i32 267780563, i32 -1241203456, i32 280365077, i32 135575041, i32 1753096114, i32 532348930, i32 33789952, i32 1344274564, i32 134500024, i32 2116006400, i32 -1207959409, i32 68686, i32 -1887505219, i32 1320681472, i32 2113929476, i32 -1207959409, i32 65614, i32 -1887567345, i32 1320681472, i32 2113931264, i32 -939523995, i32 200548351, i32 72268025, i32 1702756360, i32 532348928, i32 4241152, i32 20100736, i32 263461876, i32 117341696, i32 2113933056, i32 -2147481939, i32 -167640832, i32 79495169, i32 435164349, i32 805339167, i32 128514, i32 687080637, i32 3273728, i32 931008525, i32 32768000, i32 31764980, i32 -954469056, i32 -258687744, i32 8389785, i32 167117367, i32 -2130395904, i32 -821903360, i32 8519697, i32 583992001, i32 521390080, i32 -931722252, i32 200548131, i32 -1306461867, i32 -258687726, i32 8390553, i32 167117367, i32 -201016064, i32 838074674, i32 142704130, i32 -258687744, i32 8390553, i32 167117335, i32 -66798336, i32 -258687712, i32 8390297, i32 167117367, i32 -201016064, i32 -2122448591, i32 -1799553016, i32 -2147051024, i32 -167635200, i32 79495177, i32 -114356492, i32 -200101344, i32 854851890, i32 142704130, i32 -2145321984, i32 -167591936, i32 79495170, i32 -938275084, i32 200548131, i32 20050957, i32 2114073332, i32 33556609, i32 -1023377407, i32 194050, i32 -1799551811, i32 -2147182096, i32 -167635200, i32 79495177, i32 -13627659, i32 -201202512, i32 -223212517, i32 532862, i32 -1337979148, i32 468976356, i32 -258687700, i32 8390553, i32 167117367, i32 -201016064, i32 854851890, i32 142704130, i32 -258687744, i32 8390553, i32 167117335, i32 -201016064, i32 -275508978, i32 32894992, i32 194686, i32 -18608395, i32 703603901, i32 805339167, i32 194050, i32 250938557, i32 16383698, i32 -1996586759, i32 -108988159, i32 -106890864, i32 -103745104, i32 -1108280864, i32 33573380, i32 -1006589233, i32 200541355, i32 1309674787, i32 -288417280, i32 419450624, i32 2113994703, i32 -1224736764, i32 235143344, i32 486555649, i32 -1124069642, i32 11265028, i32 202109953, i32 21893133, i32 294464, i32 11265024, i32 1443623940, i32 1074202766, i32 25982, i32 8454066, i32 267780612, i32 -1912292096, i32 2118125316, i32 -1308622747, i32 50364671, i32 1046018, i32 -20511555, i32 49189968, i32 1074200719, i32 2113990587, i32 -2147483547, i32 -167640576, i32 79495183, i32 -125959409, i32 4915202, i32 -1900039679, i32 2118123844, i32 1258291343, i32 -1329789692, i32 -189486081, i32 8391691, i32 200672007, i32 1074052352, i32 183894272, i32 -66798336, i32 -52364048, i32 -55509808, i32 -57607008, i32 8978048, i32 16548092, i32 -134204684, i32 284553217, i32 1888419762, i32 -1887551423, i32 16252928, i32 1078030478, i32 25982, i32 -185532494, i32 -216271856, i32 5112056, i32 1088811010, i32 -266279440, i32 8392933, i32 251003269, i32 251968768, i32 32683528, i32 -235070476, i32 -251395867, i32 -2147417883, i32 -167672576, i32 79495182, i32 8388856, i32 267780643, i32 -1308312320, i32 -1978364161, i32 9403968, i32 -1895845376, i32 2118232204, i32 -134217585, i32 -2080342016, i32 1046018, i32 9372861, i32 -3210620, i32 100662528, i32 -118088716, i32 -258687744, i32 8390041, i32 167117367, i32 168082688, i32 12090892, i32 -2131444480, i32 -167606016, i32 79495183, i32 46203008, i32 -1124072714, i32 -2097119228, i32 194050, i32 118424765, i32 466302, i32 46137472, i32 -1124072714, i32 785924, i32 -1239471376, i32 548799524, i32 -258687742, i32 8390809, i32 167117367, i32 -2147173120, i32 -167608064, i32 79495170, i32 210, i32 36040832, i32 42467456, i32 -1124072714, i32 1108345092, i32 602931712, i32 85129730, i32 -1799552008, i32 -2146919952, i32 -167635200, i32 79495177, i32 -1233059432, i32 43522068, i32 136689280, i32 -1257958659, i32 -1799547391, i32 -2146854416, i32 -167627008, i32 79495177, i32 42008704, i32 -1124072970, i32 -2147417596, i32 -167606272, i32 79495170, i32 -268369855, i32 33162771, i32 -1123813371, i32 161083540, i32 35061888, i32 -1124070922, i32 -258687740, i32 8390041, i32 167117335, i32 -133907200, i32 120946176, i32 2114718208, i32 251658424, i32 119373317, i32 -1744766976, i32 8405251, i32 66454145, i32 -1123762944, i32 -13319116, i32 1158552564, i32 1408238080, i32 87423494, i32 1318585336, i32 -2125490048, i32 36734, i32 -1240977226, i32 468975890, i32 369334495, i32 42008704, i32 -1124072458, i32 1073788164, i32 -268369855, i32 33162771, i32 -133957626, i32 -2147217920, i32 -167575040, i32 79495182, i32 50331790, i32 -251597105, i32 -199229212, i32 301266203, i32 201520134, i32 -25292785, i32 301203462, i32 2114064155, i32 2113930925, i32 2113930940, i32 -1124071730, i32 112033524, i32 120946176, i32 369203200, i32 8398013, i32 49676549, i32 -1308312320, i32 -1526690273, i32 9403969, i32 33353728, i32 -1241371408, i32 -218300124, i32 -1895845371, i32 2118231300, i32 2113929359, i32 -1124072938, i32 1207730212, i32 194050, i32 753927357, i32 52475393, i32 38468736, i32 -1124072714, i32 28110852, i32 184985072, i32 825344, i32 234950040, i32 20807168, i32 2114456064, i32 2113929452, i32 -201326070, i32 201986561, i32 47230, i32 494798095, i32 49545223, i32 2114064173, i32 -1124071763, i32 117341940, i32 36142592, i32 113016320, i32 2129968384, i32 -201324883, i32 26742801, i32 85065024, i32 2114391028, i32 -134215629], [38 x i32] zeroinitializer }>, align 4
@gm107_grgpc_code = internal global <{ [471 x i32], [41 x i32] }> <{ [471 x i32] [i32 54595317, i32 -1744775016, i32 -2031091239, i32 -192306168, i32 34540315, i32 194686, i32 -1731985160, i32 59028999, i32 -1241477701, i32 -1900738432, i32 26195200, i32 -268332874, i32 -642445420, i32 -201263103, i32 -661126863, i32 31037440, i32 200575396, i32 126469153, i32 -1157393226, i32 -1867120483, i32 10393608, i32 -1241407592, i32 -2064645760, i32 14202127, i32 -134139148, i32 -252923392, i32 8396745, i32 217448906, i32 -1945846528, i32 -821966336, i32 -859307828, i32 -165940193, i32 -327285238, i32 9371648, i32 -3210805, i32 -2147420160, i32 -167654400, i32 79495183, i32 -906957646, i32 516550687, i32 30015616, i32 -1124070154, i32 -905933820, i32 13422337, i32 -199242552, i32 16315931, i32 -1712286531, i32 922779648, i32 652802, i32 8389821, i32 183894534, i32 -2012955392, i32 -822018048, i32 -1962999672, i32 -165940088, i32 -1712286531, i32 385908736, i32 652802, i32 16254141, i32 -1712286531, i32 922779648, i32 652802, i32 8389821, i32 183894534, i32 -2012955392, i32 -822018048, i32 -1962999672, i32 -166988664, i32 -1712286531, i32 385908736, i32 652802, i32 16254141, i32 -392653635, i32 444970496, i32 -1241415498, i32 -1732574588, i32 81835520, i32 469036964, i32 -123751700, i32 -258687744, i32 8389017, i32 167117367, i32 -1123762944, i32 96206228, i32 -2146497548, i32 -167656448, i32 79495179, i32 -50292240, i32 200541678, i32 -973045736, i32 980481, i32 8389821, i32 267780551, i32 -268124928, i32 -1412955751, i32 280278528, i32 -938690064, i32 -457834066, i32 96402705, i32 29687936, i32 -1124070410, i32 -989819388, i32 15650561, i32 -199236368, i32 -828836341, i32 99220736, i32 29884544, i32 -1124069642, i32 79738372, i32 469028260, i32 44812511, i32 -1961092108, i32 -821967616, i32 -1259339589, i32 280277023, i32 183704564, i32 12090885, i32 621736960, i32 -1241470008, i32 -1175449420, i32 314175500, i32 29687936, i32 -1124070410, i32 -989820156, i32 12308225, i32 -200098872, i32 -1799490021, i32 -2147378704, i32 -167635200, i32 79495177, i32 -1594294024, i32 -1199701494, i32 -1594097664, i32 201916664, i32 38468736, i32 -1124070922, i32 34242052, i32 151058432, i32 1258061837, i32 652802, i32 176030909, i32 16252930, i32 -58716404, i32 217449039, i32 201637120, i32 1258061835, i32 849410, i32 -58719043, i32 251003471, i32 201637120, i32 1258061834, i32 849410, i32 176030909, i32 16252930, i32 -1712286531, i32 922779651, i32 652802, i32 377357501, i32 51249154, i32 145534, i32 -58669891, i32 217449031, i32 201637120, i32 1258061825, i32 849410, i32 176030909, i32 210894850, i32 1190952961, i32 849410, i32 34342077, i32 38468736, i32 -1124070154, i32 34242052, i32 36142592, i32 1107331072, i32 536905986, i32 10080002, i32 -167182699, i32 -1896480626, i32 -2138386624, i32 -1241078346, i32 -356843104, i32 75544064, i32 -201223498, i32 -457775077, i32 -219169784, i32 -1712286531, i32 385908739, i32 652802, i32 16254141, i32 -5054215, i32 1083708558, i32 36734, i32 -5111537, i32 1083972750, i32 36734, i32 16310524, i32 -1799515911, i32 -2146788880, i32 -167627008, i32 79495177, i32 54460553, i32 -1291806257, i32 -1107754860, i32 177860756, i32 35061888, i32 -1124070922, i32 -124716028, i32 1090829568, i32 298795520, i32 152168192, i32 135575041, i32 33559806, i32 302006274, i32 -1124072714, i32 95240452, i32 1073746174, i32 16123648, i32 33864960, i32 67125252, i32 -1124072714, i32 271709188, i32 25297026, i32 50340559, i32 522514433, i32 -1241238853, i32 45416754, i32 100906245, i32 25559170, i32 -1258282289, i32 615908354, i32 -922714097, i32 194049, i32 814613693, i32 -437235700, i32 -1121665791, i32 2118434100, i32 -1342177179, i32 200540406, i32 -1157558514, i32 1341981938, i32 19969541, i32 -1241440074, i32 649069792, i32 -501484542, i32 -1257831499, i32 8521732, i32 583991809, i32 -1791705856, i32 8390693, i32 100008384, i32 -2147173120, i32 -167657216, i32 79495173, i32 -1744826728, i32 545128719, i32 800784385, i32 4176640, i32 -1744761192, i32 545128975, i32 244842497, i32 15727877, i32 -1157615941, i32 244842558, i32 51353602, i32 73854, i32 -49869160, i32 784007407, i32 4111104, i32 -2147338826, i32 -167652608, i32 79495171, i32 -1240980042, i32 548800053, i32 19969537, i32 -1240980298, i32 800196660, i32 157822, i32 -1157615685, i32 1057947711, i32 1344102542, i32 -1308498448, i32 9404159, i32 -1911812352, i32 -263184984, i32 -5111323, i32 36734, i32 201854, i32 1619934991, i32 -437235683, i32 2130686465, i32 251658383, i32 496799232, i32 31846480, i32 -1887502414, i32 17760256, i32 201854, i32 1344120974, i32 -1308498448, i32 9404159, i32 -1895887104, i32 -263185000, i32 -5111323, i32 36734, i32 -1467088369, i32 -437235683, i32 2130686465, i32 2113929359, i32 -1744829676, i32 8717572, i32 1441812544, i32 1885255681, i32 1702756357, i32 -156106752, i32 1589146813, i32 -1308621472, i32 9404031, i32 -2007058432, i32 798294021, i32 9403912, i32 -1939949568, i32 798294021, i32 9403912, i32 -1872840704, i32 1702756357, i32 -172621824, i32 32552454, i32 -1157040970, i32 1069219887, i32 24163840, i32 -201235786, i32 1354219291, i32 1119225856, i32 -1474563071, i32 1619934991, i32 -437235683, i32 2130686465, i32 251658383, i32 497585677, i32 31846480, i32 -1887502414, i32 343801856, i32 8388611, i32 66454017, i32 -1123762944, i32 522842148, i32 36700288, i32 -1124072714, i32 2683908, i32 218116596, i32 3636772, i32 -201198592, i32 -201005904, i32 -2114052840, i32 -1123679743, i32 68353312, i32 -50207562, i32 419300638, i32 105414144, i32 -636554240, i32 -267325548, i32 -125959691, i32 250871810, i32 -117376563, i32 25755264, i32 -1862696711, i32 -1325817607, i32 -520498951, i32 79556857, i32 -821952438, i32 -1413218134, i32 520877060, i32 5121037, i32 15650586, i32 -820445105, i32 75366655, i32 17694720, i32 -165871552, i32 79495182, i32 -167706560, i32 79495178, i32 -520294148, i32 -1325608708, i32 -1862491908, i32 -1996586756, i32 -58655744, i32 3339264, i32 17760760, i32 -1157362024, i32 -5110530, i32 1083447438, i32 36734, i32 537854200, i32 25493632, i32 -1124069386, i32 -1240986108, i32 468976098, i32 16118269, i32 16118024, i32 -2063564798, i32 1046017, i32 16254141, i32 42008704, i32 -1124069386, i32 499420676, i32 31846480, i32 -1887502414, i32 301203456, i32 102923783, i32 35028480, i32 -2145075968, i32 -167622660, i32 79495170, i32 -1241436944, i32 -58719456, i32 49676874, i32 251968768, i32 497585676, i32 31846480, i32 -1887502414, i32 343801856, i32 1057947651, i32 1344102542, i32 -1308498448, i32 9404159, i32 -1912598784, i32 -263184996, i32 -5111323, i32 36734, i32 343802127, i32 -51380221, i32 66106881, i32 1344120974, i32 -1308498448, i32 9404159, i32 28110848, i32 -1962760720, i32 -1739587584, i32 -994704372, i32 12368655, i32 -1744827240, i32 917773, i32 81278, i32 -1962824464, i32 -1739571200, i32 -994704372, i32 12368655, i32 -1744761704, i32 261620237, i32 134237702, i32 81278, i32 -268325648, i32 9110693, i32 211308592, i32 264549892, i32 -1744782149, i32 228065804, i32 135239683, i32 2114060366, i32 2113929533, i32 2113929738, i32 -201325804, i32 317982209, i32 36142618, i32 -1911746816, i32 -263184984, i32 -5111323, i32 36734, i32 201854, i32 396926, i32 248], [41 x i32] zeroinitializer }>, align 4
@gm107_grgpc_data = internal global <{ i32, i32, i32, i32, [23 x i32] }> <{ i32 108, i32 108, i32 108, i32 108, [23 x i32] zeroinitializer }>, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gm107_gr_init_400054(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4194388
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 741674851) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gm107_gr_init_shader_exceptions(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
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
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 14680062) #4, !srcloc !9
  %14 = load ptr, ptr %6, align 4
  %15 = or i32 %11, 1612
  %16 = getelementptr i8, ptr %14, i32 %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 5) #4, !srcloc !9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gm107_gr_init_504430(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = shl i32 %1, 15
  %9 = shl i32 %2, 11
  %10 = add i32 %8, 5260336
  %11 = add i32 %10, %9
  %12 = getelementptr i8, ptr %7, i32 %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 -1073741824) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gm107_gr_init_bios(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.nvbios_P0260E, align 4
  %3 = alloca %struct.nvbios_P0260X, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 21
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #4
  store i32 0, ptr %2, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #4
  store i32 0, ptr %3, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #4
  store i8 0, ptr %4, align 1, !annotation !10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #4
  store i8 0, ptr %5, align 1, !annotation !10
  %10 = call i32 @nvbios_P0260Ep(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %2) #4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %40, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  br label %14

14:                                               ; preds = %36, %12
  %15 = phi i32 [ 0, %12 ], [ %37, %36 ]
  %16 = icmp ult i32 %15, 5
  br i1 %16, label %17, label %36

17:                                               ; preds = %14
  %18 = load i32, ptr %2, align 4
  %19 = load ptr, ptr %13, align 4
  %20 = getelementptr [5 x %struct.anon.158], ptr @gm107_gr_init_bios.regs, i32 0, i32 %15
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr i8, ptr %19, i32 %21
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %18) #4, !srcloc !9
  %23 = call i32 @nvbios_P0260Xp(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %3) #4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %17
  %26 = getelementptr [5 x %struct.anon.158], ptr @gm107_gr_init_bios.regs, i32 0, i32 %15, i32 1
  %27 = load i32, ptr %26, align 4
  br label %28

28:                                               ; preds = %28, %25
  %29 = phi i32 [ 0, %25 ], [ %33, %28 ]
  %30 = load i32, ptr %3, align 4
  %31 = load ptr, ptr %13, align 4
  %32 = getelementptr i8, ptr %31, i32 %27
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #4, !srcloc !9
  %33 = add i32 %29, 1
  %34 = call i32 @nvbios_P0260Xp(ptr noundef %9, i32 noundef %33, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %3) #4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %28

36:                                               ; preds = %28, %17, %14
  %37 = add i32 %15, 1
  %38 = call i32 @nvbios_P0260Ep(ptr noundef %9, i32 noundef %37, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %2) #4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %14

40:                                               ; preds = %36, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_P0260Ep(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_P0260Xp(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm107_gr_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @gf100_gr_new_(ptr noundef nonnull @gm107_gr_fwif, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #4
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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gm107_gr_init_gpc_mmu(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 33
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 4294784
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #4, !srcloc !9
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr i8, ptr %9, i32 4294800
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #4, !srcloc !9
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr i8, ptr %11, i32 4294804
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #4, !srcloc !9
  %13 = getelementptr inbounds %struct.nvkm_fb, ptr %5, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nvkm_memory_func, ptr %15, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i64 %17(ptr noundef %14) #4
  %19 = lshr i64 %18, 8
  %20 = trunc i64 %19 to i32
  %21 = load ptr, ptr %6, align 4
  %22 = getelementptr i8, ptr %21, i32 4294836
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #4, !srcloc !9
  %23 = getelementptr inbounds %struct.nvkm_fb, ptr %5, i32 0, i32 7
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nvkm_memory_func, ptr %25, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i64 %27(ptr noundef %24) #4
  %29 = lshr i64 %28, 8
  %30 = trunc i64 %29 to i32
  %31 = load ptr, ptr %6, align 4
  %32 = getelementptr i8, ptr %31, i32 4294840
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #4, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_gr_init_vsc_stream_master(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf117_gr_init_zcull(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_num_active_ltcs(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_gr_init_rop_active_fbps(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gm107_gr_init_bios_2(ptr noundef %0) #0 {
  %2 = alloca %struct.bit_entry, align 2
  %3 = alloca %struct.nvbios_init, align 4
  %4 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1
  %5 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 21
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %2, i8 0, i32 6, i1 false), !annotation !10
  %9 = call i32 @bit_entry(ptr noundef %8, i8 noundef zeroext 80, ptr noundef nonnull %2) #4
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.bit_entry, ptr %2, i32 0, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 2
  %14 = select i1 %10, i1 %13, i1 false
  %15 = getelementptr inbounds %struct.bit_entry, ptr %2, i32 0, i32 2
  %16 = load i16, ptr %15, align 2
  %17 = icmp ugt i16 %16, 43
  %18 = select i1 %14, i1 %17, i1 false
  br i1 %18, label %19, label %53

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.bit_entry, ptr %2, i32 0, i32 3
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = add nuw nsw i32 %22, 40
  %24 = call i32 @nvbios_rd32(ptr noundef %8, i32 noundef %23) #4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %53, label %26

26:                                               ; preds = %19
  %27 = call zeroext i8 @nvbios_rd08(ptr noundef %8, i32 noundef %24) #4
  %28 = add i32 %24, 1
  %29 = call zeroext i8 @nvbios_rd08(ptr noundef %8, i32 noundef %28) #4
  %30 = icmp eq i8 %27, 32
  %31 = icmp ugt i8 %29, 7
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %33, label %53

33:                                               ; preds = %26
  %34 = add i32 %24, 4
  %35 = call i32 @nvbios_rd32(ptr noundef %8, i32 noundef %34) #4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %39, i32 6394948
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #4, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #4
  %42 = getelementptr inbounds i8, ptr %3, i32 24
  store i32 0, ptr %42, align 4, !annotation !10
  store ptr %4, ptr %3, align 4
  %43 = getelementptr inbounds %struct.nvbios_init, ptr %3, i32 0, i32 1
  store i32 %35, ptr %43, align 4
  %44 = getelementptr inbounds %struct.nvbios_init, ptr %3, i32 0, i32 2
  store ptr null, ptr %44, align 4
  %45 = getelementptr inbounds %struct.nvbios_init, ptr %3, i32 0, i32 3
  store i32 -1, ptr %45, align 4
  %46 = getelementptr inbounds %struct.nvbios_init, ptr %3, i32 0, i32 4
  store i32 0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.nvbios_init, ptr %3, i32 0, i32 5
  store i32 -1, ptr %47, align 4
  %48 = getelementptr inbounds %struct.nvbios_init, ptr %3, i32 0, i32 6
  store i8 1, ptr %48, align 4
  %49 = getelementptr inbounds %struct.nvbios_init, ptr %3, i32 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %49, i8 0, i64 16, i1 false)
  %50 = call i32 @nvbios_exec(ptr noundef nonnull %3) #4
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #4
  %51 = load ptr, ptr %38, align 4
  %52 = getelementptr i8, ptr %51, i32 6394948
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %41) #4, !srcloc !9
  br label %53

53:                                               ; preds = %37, %33, %26, %19, %1
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #4
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
declare dso_local void @gf100_gr_trap_mp(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_rops(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_entry(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_exec(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

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
!8 = !{i64 2151510879}
!9 = !{i64 3969786}
!10 = !{!"auto-init"}
!11 = !{i64 3970204}
!12 = !{i64 2151509657}
