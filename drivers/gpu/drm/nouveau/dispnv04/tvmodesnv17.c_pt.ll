; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/dispnv04/tvmodesnv17.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv04/tvmodesnv17.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon = type { i32, i32, i32, [64 x i8] }
%struct.nv17_tv_norm_params = type { i32, %union.anon }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.drm_display_mode, [38 x i32] }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.filter_params = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.71, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.80, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.71 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.80 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.108, %struct.anon.109, %struct.anon.111, ptr, %struct.anon.112, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.113, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.119 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.108 = type { ptr, i32, i32, i8 }
%struct.anon.109 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.110] }
%struct.anon.110 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.111 = type { i64, i64 }
%struct.anon.112 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.98 }
%struct.anon.98 = type { ptr, i64 }
%struct.anon.113 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.114, %struct.anon.115, %struct.anon.116, %struct.anon.117 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.83, i8 }
%union.anon.83 = type { %struct.anon.87 }
%struct.anon.87 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.114 = type { i32 }
%struct.anon.115 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.116 = type { i16, i16 }
%struct.anon.117 = type { i16, i16, i16, %struct.anon.118, i16 }
%struct.anon.118 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.119 = type { ptr, %struct.mutex, i8 }
%struct.nv17_tv_state = type { [64 x i8], [4 x [7 x i32]], [4 x [7 x i32]], [4 x [7 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nv17_tv_encoder = type { %struct.nouveau_encoder, %struct.nv17_tv_state, %struct.nv17_tv_state, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nouveau_encoder = type { %struct.drm_encoder_slave, ptr, i32, i32, ptr, ptr, ptr, i32, %struct.anon.89, %struct.drm_display_mode, i32, %struct.nv04_output_reg, %union.anon.90, %struct.anon.97, ptr, ptr, ptr }
%struct.drm_encoder_slave = type { %struct.drm_encoder, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.anon.89 = type { i8, ptr }
%struct.nv04_output_reg = type { i32, i32 }
%union.anon.90 = type { %struct.anon.91 }
%struct.anon.91 = type { ptr, i32, i32, %struct.mutex, [15 x i8], [16 x i8], %struct.drm_dp_desc, i8 }
%struct.drm_dp_desc = type { %struct.drm_dp_dpcd_ident, i32 }
%struct.drm_dp_dpcd_ident = type { [3 x i8], [6 x i8], i8, i8, i8 }
%struct.anon.97 = type { i8 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nouveau_crtc = type { %struct.drm_crtc, i32, %struct.nvif_notify, i32, i32, i32, i32, i32, i32, i32, %struct.anon.99, %struct.anon.100, %struct.anon.101, ptr, ptr }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.anon.99 = type { i32, i8, i32, i32 }
%struct.anon.100 = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.anon.101 = type { i32 }
%struct.nv04_crtc_reg = type { i8, [160 x i8], [16 x i8], [5 x i8], [9 x i8], [21 x i8], [768 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nvkm_pll_vals, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [7 x i32], [7 x i32], i32, i32, [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [38 x i32] }
%struct.nvkm_pll_vals = type { %union.anon.102, i32, i32 }
%union.anon.102 = type { %struct.anon.104 }
%struct.anon.104 = type { i16, i16 }

@.str = private unnamed_addr constant [4 x i8] c"PAL\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"PAL-M\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"PAL-N\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"PAL-Nc\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"NTSC-M\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"NTSC-J\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"hd480i\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"hd480p\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"hd576i\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"hd576p\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"hd720p\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"hd1080i\00", align 1
@nv17_tv_norm_names = dso_local local_unnamed_addr constant [12 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], align 4
@nv17_tv_norms = dso_local local_unnamed_addr global <{ { i32, { %struct.anon, [188 x i8] } }, { i32, { %struct.anon, [188 x i8] } }, { i32, { %struct.anon, [188 x i8] } }, { i32, { %struct.anon, [188 x i8] } }, { i32, { %struct.anon, [188 x i8] } }, { i32, { %struct.anon, [188 x i8] } }, { i32, { %struct.anon, [188 x i8] } }, %struct.nv17_tv_norm_params, { i32, { %struct.anon, [188 x i8] } }, %struct.nv17_tv_norm_params, %struct.nv17_tv_norm_params, %struct.nv17_tv_norm_params }> <{ { i32, { %struct.anon, [188 x i8] } } { i32 0, { %struct.anon, [188 x i8] } { %struct.anon { i32 720, i32 576, i32 50000, [64 x i8] c"*\09\8A\CB\00\00\0B\18~@\8A5'\004\03>\03\17!\1B\1B$\9C\01\00\0F\0F`\05\D3\03\D3\04\D4\01\02\00\0A\05\00\1A\FF\03\18\0Fx\00\00\B4\00\15I\10\00\9B\BD\15\05\15>\03\00\00" }, [188 x i8] undef } }, { i32, { %struct.anon, [188 x i8] } } { i32 0, { %struct.anon, [188 x i8] } { %struct.anon { i32 720, i32 480, i32 59940, [64 x i8] c"!\E6\EF\E3\00\00\0B\18~Dv2%\00<\00<\00\17!\1B\1B$\83\01\00\0F\0F`\05\D3\01\C5\04\C5\01\02\00\0A\05\00\18\FF\03 \0Fx\00\00\B4\00\15@\10\00\9C\C8\15\05\15<\00\00\00" }, [188 x i8] undef } }, { i32, { %struct.anon, [188 x i8] } } { i32 0, { %struct.anon, [188 x i8] } { %struct.anon { i32 720, i32 576, i32 50000, [64 x i8] c"*\09\8A\CB\00\00\0B\18~@\8A2%\00<\00<\00\17!\1B\1B$\9C\01\00\0F\0F`\05\D3\01\C5\04\C5\01\02\00\0A\05\00\1A\FF\03\18\0Fx\00\00\B4\00\15I\10\00\9B\BD\15\05\15<\00\00\00" }, [188 x i8] undef } }, { i32, { %struct.anon, [188 x i8] } } { i32 0, { %struct.anon, [188 x i8] } { %struct.anon { i32 720, i32 576, i32 50000, [64 x i8] c"!\F6\94F\00\00\0B\18~D\8A5'\004\03>\03\17!\1B\1B$\9C\01\00\0F\0F`\05\D3\03\D3\04\D4\01\02\00\0A\05\00\1A\FF\03\18\0Fx\00\00\B4\00\15I\10\00\9B\BD\15\05\15>\03\00\00" }, [188 x i8] undef } }, { i32, { %struct.anon, [188 x i8] } } { i32 0, { %struct.anon, [188 x i8] } { %struct.anon { i32 720, i32 480, i32 59940, [64 x i8] c"!\F0|\1F\00\00\0B\18~DvH\00\00<\00<\00\17!\1B\1B$\83\01\00\0F\0F`\05\D3\01\C5\04\C5\01\02\00\0A\05\00\16\FF\03 \0Fx\00\00\B4\00\15\04\10\00\9C\C8\15\05\15<\00\00\00" }, [188 x i8] undef } }, { i32, { %struct.anon, [188 x i8] } } { i32 0, { %struct.anon, [188 x i8] } { %struct.anon { i32 720, i32 480, i32 59940, [64 x i8] c"!\F0|\1F\00\00\0B\18~DvH\00\002\00<\00\17!\1B\1B$\83\01\00\0F\0F`\05\D3\01\CF\04\CF\01\02\00\0A\05\00\16\FF\03 \0Fx\00\00\B4\00\15\04\10\00\A4\C8\15\05\15<\00\00\00" }, [188 x i8] undef } }, { i32, { %struct.anon, [188 x i8] } } { i32 0, { %struct.anon, [188 x i8] } { %struct.anon { i32 720, i32 480, i32 59940, [64 x i8] c"!\F0|\1F\00\00\0B\18~DvH\00\002\00<\00\17!\1B\1B$\83\01\00\0F\0F`\05\D3\01\CF\04\CF\01\02\00\0A\05\00\16\FF\03 \0Fx\00\00\B4\00\15\04\10\00\A4\C8\15\05\15<\00\00\00" }, [188 x i8] undef } }, %struct.nv17_tv_norm_params { i32 1, %union.anon { %struct.anon.0 { %struct.drm_display_mode { i32 27000, i16 720, i16 735, i16 743, i16 858, i16 0, i16 480, i16 490, i16 494, i16 525, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, [38 x i32] [i32 55836672, i32 0, i32 0, i32 788, i32 55836730, i32 262144, i32 7275332, i32 403701760, i32 269877252, i32 268828677, i32 268828684, i32 268828704, i32 268828705, i32 336461858, i32 268829186, i32 402784778, i32 403702283, i32 268439551, i32 268439551, i32 268439551, i32 268439551, i32 268439551, i32 268439551, i32 112, i32 67043328, i32 87, i32 3014686, i32 39321900, i32 -1599470356, i32 48, i32 -2137653223, i32 19661568, i32 8217, i32 1536, i32 839254041, i32 0, i32 0, i32 1024] } } }, { i32, { %struct.anon, [188 x i8] } } { i32 0, { %struct.anon, [188 x i8] } { %struct.anon { i32 720, i32 576, i32 50000, [64 x i8] c"*\09\8A\CB\00\00\0B\18~@\8A5'\004\03>\03\17!\1B\1B$\9C\01\00\0F\0F`\05\D3\03\D3\04\D4\01\02\00\0A\05\00\1A\FF\03\18\0Fx\00\00\B4\00\15I\10\00\9B\BD\15\05\15>\03\00\00" }, [188 x i8] undef } }, %struct.nv17_tv_norm_params { i32 1, %union.anon { %struct.anon.0 { %struct.drm_display_mode { i32 27000, i16 720, i16 730, i16 738, i16 864, i16 0, i16 576, i16 581, i16 585, i16 625, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x576\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, [38 x i32] [i32 55836672, i32 0, i32 0, i32 788, i32 55836730, i32 262144, i32 7275332, i32 403701760, i32 268828673, i32 268828681, i32 268828710, i32 268828711, i32 336461864, i32 268829288, i32 403702381, i32 268439551, i32 268439551, i32 268439551, i32 268439551, i32 268439551, i32 268439551, i32 268439551, i32 268439551, i32 105, i32 67043328, i32 87, i32 3014686, i32 39321900, i32 -1599470356, i32 48, i32 -2137653223, i32 19661568, i32 8217, i32 1536, i32 839254041, i32 0, i32 0, i32 1024] } } }, %struct.nv17_tv_norm_params { i32 1, %union.anon { %struct.anon.0 { %struct.drm_display_mode { i32 74250, i16 1280, i16 1349, i16 1357, i16 1650, i16 0, i16 720, i16 725, i16 730, i16 750, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, [38 x i32] [i32 19268500, i32 0, i32 0, i32 1570, i32 107675681, i32 393290, i32 18941478, i32 135725056, i32 458756, i32 458774, i32 458775, i32 68091928, i32 459496, i32 135725805, i32 4095, i32 4095, i32 4095, i32 4095, i32 4095, i32 4095, i32 4095, i32 4095, i32 4095, i32 0, i32 48496641, i32 88, i32 3014686, i32 39321900, i32 -1599470356, i32 48, i32 -2129919943, i32 19661568, i32 -1073733575, i32 1536, i32 839254073, i32 0, i32 0, i32 0] } } }, %struct.nv17_tv_norm_params { i32 1, %union.anon { %struct.anon.0 { %struct.drm_display_mode { i32 74250, i16 1920, i16 1961, i16 2049, i16 2200, i16 0, i16 1080, i16 1084, i16 1088, i16 1125, i16 0, i32 21, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1080\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, [38 x i32] [i32 11273248, i32 72090744, i32 1188, i32 83626088, i32 143917096, i32 393300, i32 15206512, i32 200736768, i32 197591044, i32 458757, i32 458770, i32 458771, i32 68091924, i32 459312, i32 200737330, i32 200737331, i32 29819447, i32 459320, i32 459332, i32 459333, i32 68092486, i32 459874, i32 32965732, i32 0, i32 48496641, i32 88, i32 3014686, i32 39321900, i32 -1599470356, i32 48, i32 -2124480436, i32 19661568, i32 -1073733556, i32 1536, i32 839254092, i32 0, i32 0, i32 0] } } } }>, align 4
@nv17_tv_modes = dso_local local_unnamed_addr constant [9 x %struct.drm_display_mode] [%struct.drm_display_mode { i32 0, i16 320, i16 344, i16 392, i16 560, i16 0, i16 200, i16 200, i16 202, i16 220, i16 0, i32 8234, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"320x200\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 0, i16 320, i16 344, i16 392, i16 560, i16 0, i16 240, i16 240, i16 246, i16 263, i16 0, i32 8234, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"320x240\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 0, i16 400, i16 432, i16 496, i16 640, i16 0, i16 300, i16 300, i16 303, i16 314, i16 0, i32 8229, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"400x300\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 0, i16 640, i16 672, i16 768, i16 880, i16 0, i16 480, i16 480, i16 492, i16 525, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"640x480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 0, i16 720, i16 752, i16 872, i16 960, i16 0, i16 480, i16 480, i16 493, i16 525, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 0, i16 720, i16 776, i16 856, i16 960, i16 0, i16 576, i16 576, i16 588, i16 597, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x576\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 0, i16 800, i16 840, i16 920, i16 1040, i16 0, i16 600, i16 600, i16 604, i16 618, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"800x600\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 0, i16 1024, i16 1064, i16 1200, i16 1344, i16 0, i16 768, i16 768, i16 777, i16 806, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1024x768\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode zeroinitializer], align 4
@fparams = internal unnamed_addr constant [2 x [4 x %struct.filter_params]] [[4 x %struct.filter_params] [%struct.filter_params { i64 18102131444972928, i64 -11123025262576764, i64 1853834447538050, i64 562949953, i64 220267397, i64 112393908247, i64 -18732280818, i64 -4294, i64 156165161, i64 1311658936, i64 -218609775, i64 -16, i64 -2253, i64 -11922, i64 1987, i64 0 }, %struct.filter_params { i64 -12544092496372134, i64 -19163167132282440, i64 11206102601952914, i64 -1128522127725660, i64 128128353432, i64 214951611242, i64 -109006342986, i64 10936799211, i64 1754991115, i64 2380831922, i64 -1246921599, i64 125565986, i64 -9492, i64 -23141, i64 10952, i64 -1098 }, %struct.filter_params { i64 -15985877032222604, i64 8768954330853465, i64 -1461487603400973, i64 -844424930, i64 144058060715, i64 -146670135271, i64 24444965278, i64 8589, i64 1462916360, i64 -1493091173, i64 248847318, i64 201, i64 4425, i64 18397, i64 -3066, i64 0 }, %struct.filter_params { i64 14576968672996204, i64 5970582748216768, i64 -5346259709398488, i64 521660389087625, i64 -178115411911, i64 -76346578444, i64 56082914152, i64 -4974559971, i64 -2587645200, i64 -752938653, i64 682095785, i64 -62001795, i64 28723, i64 10237, i64 -6439, i64 541 }], [4 x %struct.filter_params] [%struct.filter_params { i64 19028265464619256, i64 120561080549731, i64 -20074232389050, i64 -3377699720, i64 -14612934734, i64 897648, i64 -395136, i64 42949, i64 -154031552, i64 102530096, i64 -17187536, i64 17498, i64 1551, i64 -4, i64 2, i64 0 }, %struct.filter_params { i64 1901545581990413, i64 1644193292258837, i64 413693343420859, i64 -42124419114609, i64 35618679181, i64 -5123414947, i64 -4070134347, i64 405904474, i64 629592796, i64 172098584, i64 -181584422, i64 18144508, i64 -604, i64 -527, i64 471, i64 -43 }, %struct.filter_params { i64 -4160310212499389, i64 -4515463234688897, i64 752577393431467, i64 0, i64 169831502329, i64 24395641874, i64 -4065942459, i64 0, i64 2566821538, i64 211819717, i64 -35560634, i64 45432, i64 -9760, i64 -219, i64 39, i64 0 }, %struct.filter_params { i64 -7733860784772489, i64 -409539335714563, i64 362133601611931, i64 7134264759708, i64 88851276942, i64 12945044315, i64 -2395672628, i64 -56307021, i64 1006779542, i64 -12386165, i64 90734824, i64 -13368052, i64 -4427, i64 1136, i64 -719, i64 98 }]], align 8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv17_tv_state_save(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  br label %4

4:                                                ; preds = %25, %2
  %5 = phi i32 [ 0, %2 ], [ %29, %25 ]
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3, i32 0, i32 6
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !8

10:                                               ; preds = %4
  %11 = getelementptr i8, ptr %8, i32 53792
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %5) #4, !srcloc !10
  br label %14

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %13, i32 noundef 4, i64 noundef 53792, i32 noundef %5) #4
  br label %14

14:                                               ; preds = %12, %10
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr inbounds %struct.nouveau_drm, ptr %15, i32 0, i32 2, i32 3, i32 0, i32 6
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19, !prof !8

19:                                               ; preds = %14
  %20 = getelementptr i8, ptr %17, i32 53796
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  br label %25

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.nouveau_drm, ptr %15, i32 0, i32 2, i32 3
  %24 = tail call i32 @nvif_object_rd(ptr noundef %23, i32 noundef 4, i64 noundef 53796) #4
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi i32 [ %21, %19 ], [ %24, %22 ]
  %27 = trunc i32 %26 to i8
  %28 = getelementptr [64 x i8], ptr %1, i32 0, i32 %5
  store i8 %27, ptr %28, align 1
  %29 = add nuw nsw i32 %5, 1
  %30 = icmp eq i32 %29, 64
  br i1 %30, label %31, label %4

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.nv17_tv_state, ptr %1, i32 0, i32 1
  tail call fastcc void @tv_save_filter(ptr noundef %0, i32 noundef 54032, ptr noundef %32)
  %33 = getelementptr inbounds %struct.nv17_tv_state, ptr %1, i32 0, i32 2
  tail call fastcc void @tv_save_filter(ptr noundef %0, i32 noundef 54160, ptr noundef %33)
  %34 = getelementptr inbounds %struct.nv17_tv_state, ptr %1, i32 0, i32 3
  tail call fastcc void @tv_save_filter(ptr noundef %0, i32 noundef 54544, ptr noundef %34)
  %35 = load ptr, ptr %3, align 4
  %36 = getelementptr inbounds %struct.nouveau_drm, ptr %35, i32 0, i32 2, i32 3, i32 0, i32 6
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39, !prof !8

39:                                               ; preds = %31
  %40 = getelementptr i8, ptr %37, i32 53760
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  br label %45

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.nouveau_drm, ptr %35, i32 0, i32 2, i32 3
  %44 = tail call i32 @nvif_object_rd(ptr noundef %43, i32 noundef 4, i64 noundef 53760) #4
  br label %45

45:                                               ; preds = %42, %39
  %46 = phi i32 [ %41, %39 ], [ %44, %42 ]
  %47 = getelementptr inbounds %struct.nv17_tv_state, ptr %1, i32 0, i32 4
  store i32 %46, ptr %47, align 4
  %48 = load ptr, ptr %3, align 4
  %49 = getelementptr inbounds %struct.nouveau_drm, ptr %48, i32 0, i32 2, i32 3, i32 0, i32 6
  %50 = load ptr, ptr %49, align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52, !prof !8

52:                                               ; preds = %45
  %53 = getelementptr i8, ptr %50, i32 53764
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  br label %58

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.nouveau_drm, ptr %48, i32 0, i32 2, i32 3
  %57 = tail call i32 @nvif_object_rd(ptr noundef %56, i32 noundef 4, i64 noundef 53764) #4
  br label %58

58:                                               ; preds = %55, %52
  %59 = phi i32 [ %54, %52 ], [ %57, %55 ]
  %60 = getelementptr inbounds %struct.nv17_tv_state, ptr %1, i32 0, i32 5
  store i32 %59, ptr %60, align 4
  %61 = load ptr, ptr %3, align 4
  %62 = getelementptr inbounds %struct.nouveau_drm, ptr %61, i32 0, i32 2, i32 3, i32 0, i32 6
  %63 = load ptr, ptr %62, align 8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65, !prof !8

65:                                               ; preds = %58
  %66 = getelementptr i8, ptr %63, i32 53768
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  br label %71

68:                                               ; preds = %58
  %69 = getelementptr inbounds %struct.nouveau_drm, ptr %61, i32 0, i32 2, i32 3
  %70 = tail call i32 @nvif_object_rd(ptr noundef %69, i32 noundef 4, i64 noundef 53768) #4
  br label %71

71:                                               ; preds = %68, %65
  %72 = phi i32 [ %67, %65 ], [ %70, %68 ]
  %73 = getelementptr inbounds %struct.nv17_tv_state, ptr %1, i32 0, i32 6
  store i32 %72, ptr %73, align 4
  %74 = load ptr, ptr %3, align 4
  %75 = getelementptr inbounds %struct.nouveau_drm, ptr %74, i32 0, i32 2, i32 3, i32 0, i32 6
  %76 = load ptr, ptr %75, align 8
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %78, !prof !8

78:                                               ; preds = %71
  %79 = getelementptr i8, ptr %76, i32 53772
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  br label %84

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.nouveau_drm, ptr %74, i32 0, i32 2, i32 3
  %83 = tail call i32 @nvif_object_rd(ptr noundef %82, i32 noundef 4, i64 noundef 53772) #4
  br label %84

84:                                               ; preds = %81, %78
  %85 = phi i32 [ %80, %78 ], [ %83, %81 ]
  %86 = getelementptr inbounds %struct.nv17_tv_state, ptr %1, i32 0, i32 7
  store i32 %85, ptr %86, align 4
  %87 = load ptr, ptr %3, align 4
  %88 = getelementptr inbounds %struct.nouveau_drm, ptr %87, i32 0, i32 2, i32 3, i32 0, i32 6
  %89 = load ptr, ptr %88, align 8
  %90 = icmp eq ptr %89, null
  br i1 %90, label %94, label %91, !prof !8

91:                                               ; preds = %84
  %92 = getelementptr i8, ptr %89, i32 54020
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  br label %97

94:                                               ; preds = %84
  %95 = getelementptr inbounds %struct.nouveau_drm, ptr %87, i32 0, i32 2, i32 3
  %96 = tail call i32 @nvif_object_rd(ptr noundef %95, i32 noundef 4, i64 noundef 54020) #4
  br label %97

97:                                               ; preds = %94, %91
  %98 = phi i32 [ %93, %91 ], [ %96, %94 ]
  %99 = getelementptr inbounds %struct.nv17_tv_state, ptr %1, i32 0, i32 8
  store i32 %98, ptr %99, align 4
  %100 = load ptr, ptr %3, align 4
  %101 = getelementptr inbounds %struct.nouveau_drm, ptr %100, i32 0, i32 2, i32 3, i32 0, i32 6
  %102 = load ptr, ptr %101, align 8
  %103 = icmp eq ptr %102, null
  br i1 %103, label %107, label %104, !prof !8

104:                                              ; preds = %97
  %105 = getelementptr i8, ptr %102, i32 54528
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  br label %110

107:                                              ; preds = %97
  %108 = getelementptr inbounds %struct.nouveau_drm, ptr %100, i32 0, i32 2, i32 3
  %109 = tail call i32 @nvif_object_rd(ptr noundef %108, i32 noundef 4, i64 noundef 54528) #4
  br label %110

110:                                              ; preds = %107, %104
  %111 = phi i32 [ %106, %104 ], [ %109, %107 ]
  %112 = getelementptr inbounds %struct.nv17_tv_state, ptr %1, i32 0, i32 9
  store i32 %111, ptr %112, align 4
  %113 = load ptr, ptr %3, align 4
  %114 = getelementptr inbounds %struct.nouveau_drm, ptr %113, i32 0, i32 2, i32 3, i32 0, i32 6
  %115 = load ptr, ptr %114, align 8
  %116 = icmp eq ptr %115, null
  br i1 %116, label %120, label %117, !prof !8

117:                                              ; preds = %110
  %118 = getelementptr i8, ptr %115, i32 54532
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  br label %123

120:                                              ; preds = %110
  %121 = getelementptr inbounds %struct.nouveau_drm, ptr %113, i32 0, i32 2, i32 3
  %122 = tail call i32 @nvif_object_rd(ptr noundef %121, i32 noundef 4, i64 noundef 54532) #4
  br label %123

123:                                              ; preds = %120, %117
  %124 = phi i32 [ %119, %117 ], [ %122, %120 ]
  %125 = getelementptr inbounds %struct.nv17_tv_state, ptr %1, i32 0, i32 10
  store i32 %124, ptr %125, align 4
  %126 = load ptr, ptr %3, align 4
  %127 = getelementptr inbounds %struct.nouveau_drm, ptr %126, i32 0, i32 2, i32 3, i32 0, i32 6
  %128 = load ptr, ptr %127, align 8
  %129 = icmp eq ptr %128, null
  br i1 %129, label %133, label %130, !prof !8

130:                                              ; preds = %123
  %131 = getelementptr i8, ptr %128, i32 54536
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %131) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  br label %136

133:                                              ; preds = %123
  %134 = getelementptr inbounds %struct.nouveau_drm, ptr %126, i32 0, i32 2, i32 3
  %135 = tail call i32 @nvif_object_rd(ptr noundef %134, i32 noundef 4, i64 noundef 54536) #4
  br label %136

136:                                              ; preds = %133, %130
  %137 = phi i32 [ %132, %130 ], [ %135, %133 ]
  %138 = getelementptr inbounds %struct.nv17_tv_state, ptr %1, i32 0, i32 11
  store i32 %137, ptr %138, align 4
  %139 = load ptr, ptr %3, align 4
  %140 = getelementptr inbounds %struct.nouveau_drm, ptr %139, i32 0, i32 2, i32 3, i32 0, i32 6
  %141 = load ptr, ptr %140, align 8
  %142 = icmp eq ptr %141, null
  br i1 %142, label %146, label %143, !prof !8

143:                                              ; preds = %136
  %144 = getelementptr i8, ptr %141, i32 54784
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %144) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  br label %149

146:                                              ; preds = %136
  %147 = getelementptr inbounds %struct.nouveau_drm, ptr %139, i32 0, i32 2, i32 3
  %148 = tail call i32 @nvif_object_rd(ptr noundef %147, i32 noundef 4, i64 noundef 54784) #4
  br label %149

149:                                              ; preds = %146, %143
  %150 = phi i32 [ %145, %143 ], [ %148, %146 ]
  %151 = getelementptr inbounds %struct.nv17_tv_state, ptr %1, i32 0, i32 12
  store i32 %150, ptr %151, align 4
  %152 = load ptr, ptr %3, align 4
  %153 = getelementptr inbounds %struct.nouveau_drm, ptr %152, i32 0, i32 2, i32 3, i32 0, i32 6
  %154 = load ptr, ptr %153, align 8
  %155 = icmp eq ptr %154, null
  br i1 %155, label %159, label %156, !prof !8

156:                                              ; preds = %149
  %157 = getelementptr i8, ptr %154, i32 54788
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %157) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  br label %162

159:                                              ; preds = %149
  %160 = getelementptr inbounds %struct.nouveau_drm, ptr %152, i32 0, i32 2, i32 3
  %161 = tail call i32 @nvif_object_rd(ptr noundef %160, i32 noundef 4, i64 noundef 54788) #4
  br label %162

162:                                              ; preds = %159, %156
  %163 = phi i32 [ %158, %156 ], [ %161, %159 ]
  %164 = getelementptr inbounds %struct.nv17_tv_state, ptr %1, i32 0, i32 13
  store i32 %163, ptr %164, align 4
  %165 = load ptr, ptr %3, align 4
  %166 = getelementptr inbounds %struct.nouveau_drm, ptr %165, i32 0, i32 2, i32 3, i32 0, i32 6
  %167 = load ptr, ptr %166, align 8
  %168 = icmp eq ptr %167, null
  br i1 %168, label %172, label %169, !prof !8

169:                                              ; preds = %162
  %170 = getelementptr i8, ptr %167, i32 54792
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %170) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  br label %175

172:                                              ; preds = %162
  %173 = getelementptr inbounds %struct.nouveau_drm, ptr %165, i32 0, i32 2, i32 3
  %174 = tail call i32 @nvif_object_rd(ptr noundef %173, i32 noundef 4, i64 noundef 54792) #4
  br label %175

175:                                              ; preds = %172, %169
  %176 = phi i32 [ %171, %169 ], [ %174, %172 ]
  %177 = getelementptr inbounds %struct.nv17_tv_state, ptr %1, i32 0, i32 14
  store i32 %176, ptr %177, align 4
  %178 = load ptr, ptr %3, align 4
  %179 = getelementptr inbounds %struct.nouveau_drm, ptr %178, i32 0, i32 2, i32 3, i32 0, i32 6
  %180 = load ptr, ptr %179, align 8
  %181 = icmp eq ptr %180, null
  br i1 %181, label %185, label %182, !prof !8

182:                                              ; preds = %175
  %183 = getelementptr i8, ptr %180, i32 54796
  %184 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %183) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  br label %188

185:                                              ; preds = %175
  %186 = getelementptr inbounds %struct.nouveau_drm, ptr %178, i32 0, i32 2, i32 3
  %187 = tail call i32 @nvif_object_rd(ptr noundef %186, i32 noundef 4, i64 noundef 54796) #4
  br label %188

188:                                              ; preds = %185, %182
  %189 = phi i32 [ %184, %182 ], [ %187, %185 ]
  %190 = getelementptr inbounds %struct.nv17_tv_state, ptr %1, i32 0, i32 15
  store i32 %189, ptr %190, align 4
  %191 = load ptr, ptr %3, align 4
  %192 = getelementptr inbounds %struct.nouveau_drm, ptr %191, i32 0, i32 2, i32 3, i32 0, i32 6
  %193 = load ptr, ptr %192, align 8
  %194 = icmp eq ptr %193, null
  br i1 %194, label %198, label %195, !prof !8

195:                                              ; preds = %188
  %196 = getelementptr i8, ptr %193, i32 54800
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %196) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  br label %201

198:                                              ; preds = %188
  %199 = getelementptr inbounds %struct.nouveau_drm, ptr %191, i32 0, i32 2, i32 3
  %200 = tail call i32 @nvif_object_rd(ptr noundef %199, i32 noundef 4, i64 noundef 54800) #4
  br label %201

201:                                              ; preds = %198, %195
  %202 = phi i32 [ %197, %195 ], [ %200, %198 ]
  %203 = getelementptr inbounds %struct.nv17_tv_state, ptr %1, i32 0, i32 16
  store i32 %202, ptr %203, align 4
  %204 = load ptr, ptr %3, align 4
  %205 = getelementptr inbounds %struct.nouveau_drm, ptr %204, i32 0, i32 2, i32 3, i32 0, i32 6
  %206 = load ptr, ptr %205, align 8
  %207 = icmp eq ptr %206, null
  br i1 %207, label %211, label %208, !prof !8

208:                                              ; preds = %201
  %209 = getelementptr i8, ptr %206, i32 54804
  %210 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %209) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  br label %214

211:                                              ; preds = %201
  %212 = getelementptr inbounds %struct.nouveau_drm, ptr %204, i32 0, i32 2, i32 3
  %213 = tail call i32 @nvif_object_rd(ptr noundef %212, i32 noundef 4, i64 noundef 54804) #4
  br label %214

214:                                              ; preds = %211, %208
  %215 = phi i32 [ %210, %208 ], [ %213, %211 ]
  %216 = getelementptr inbounds %struct.nv17_tv_state, ptr %1, i32 0, i32 17
  store i32 %215, ptr %216, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tv_save_filter(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca [4 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #4
  store i32 %1, ptr %4, align 4
  %5 = getelementptr inbounds i32, ptr %4, i32 1
  %6 = add i32 %1, 28
  store i32 %6, ptr %5, align 4
  %7 = getelementptr inbounds i32, ptr %4, i32 2
  %8 = add i32 %1, 64
  store i32 %8, ptr %7, align 4
  %9 = getelementptr inbounds i32, ptr %4, i32 3
  %10 = add i32 %1, 92
  store i32 %10, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  br label %12

12:                                               ; preds = %121, %3
  %13 = phi i32 [ %1, %3 ], [ %123, %121 ]
  %14 = phi i32 [ 0, %3 ], [ %119, %121 ]
  %15 = load ptr, ptr %11, align 4
  %16 = getelementptr inbounds %struct.nouveau_drm, ptr %15, i32 0, i32 2, i32 3, i32 0, i32 6
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19, !prof !8

19:                                               ; preds = %12
  %20 = getelementptr i8, ptr %17, i32 %13
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  br label %26

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.nouveau_drm, ptr %15, i32 0, i32 2, i32 3
  %24 = zext i32 %13 to i64
  %25 = tail call i32 @nvif_object_rd(ptr noundef %23, i32 noundef 4, i64 noundef %24) #4
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi i32 [ %21, %19 ], [ %25, %22 ]
  %28 = getelementptr [7 x i32], ptr %2, i32 %14, i32 0
  store i32 %27, ptr %28, align 4
  %29 = add i32 %13, 4
  %30 = load ptr, ptr %11, align 4
  %31 = getelementptr inbounds %struct.nouveau_drm, ptr %30, i32 0, i32 2, i32 3, i32 0, i32 6
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34, !prof !8

34:                                               ; preds = %26
  %35 = getelementptr i8, ptr %32, i32 %29
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  br label %41

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.nouveau_drm, ptr %30, i32 0, i32 2, i32 3
  %39 = zext i32 %29 to i64
  %40 = tail call i32 @nvif_object_rd(ptr noundef %38, i32 noundef 4, i64 noundef %39) #4
  br label %41

41:                                               ; preds = %37, %34
  %42 = phi i32 [ %36, %34 ], [ %40, %37 ]
  %43 = getelementptr [7 x i32], ptr %2, i32 %14, i32 1
  store i32 %42, ptr %43, align 4
  %44 = add i32 %13, 8
  %45 = load ptr, ptr %11, align 4
  %46 = getelementptr inbounds %struct.nouveau_drm, ptr %45, i32 0, i32 2, i32 3, i32 0, i32 6
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49, !prof !8

49:                                               ; preds = %41
  %50 = getelementptr i8, ptr %47, i32 %44
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  br label %56

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.nouveau_drm, ptr %45, i32 0, i32 2, i32 3
  %54 = zext i32 %44 to i64
  %55 = tail call i32 @nvif_object_rd(ptr noundef %53, i32 noundef 4, i64 noundef %54) #4
  br label %56

56:                                               ; preds = %52, %49
  %57 = phi i32 [ %51, %49 ], [ %55, %52 ]
  %58 = getelementptr [7 x i32], ptr %2, i32 %14, i32 2
  store i32 %57, ptr %58, align 4
  %59 = add i32 %13, 12
  %60 = load ptr, ptr %11, align 4
  %61 = getelementptr inbounds %struct.nouveau_drm, ptr %60, i32 0, i32 2, i32 3, i32 0, i32 6
  %62 = load ptr, ptr %61, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64, !prof !8

64:                                               ; preds = %56
  %65 = getelementptr i8, ptr %62, i32 %59
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  br label %71

67:                                               ; preds = %56
  %68 = getelementptr inbounds %struct.nouveau_drm, ptr %60, i32 0, i32 2, i32 3
  %69 = zext i32 %59 to i64
  %70 = tail call i32 @nvif_object_rd(ptr noundef %68, i32 noundef 4, i64 noundef %69) #4
  br label %71

71:                                               ; preds = %67, %64
  %72 = phi i32 [ %66, %64 ], [ %70, %67 ]
  %73 = getelementptr [7 x i32], ptr %2, i32 %14, i32 3
  store i32 %72, ptr %73, align 4
  %74 = add i32 %13, 16
  %75 = load ptr, ptr %11, align 4
  %76 = getelementptr inbounds %struct.nouveau_drm, ptr %75, i32 0, i32 2, i32 3, i32 0, i32 6
  %77 = load ptr, ptr %76, align 8
  %78 = icmp eq ptr %77, null
  br i1 %78, label %82, label %79, !prof !8

79:                                               ; preds = %71
  %80 = getelementptr i8, ptr %77, i32 %74
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  br label %86

82:                                               ; preds = %71
  %83 = getelementptr inbounds %struct.nouveau_drm, ptr %75, i32 0, i32 2, i32 3
  %84 = zext i32 %74 to i64
  %85 = tail call i32 @nvif_object_rd(ptr noundef %83, i32 noundef 4, i64 noundef %84) #4
  br label %86

86:                                               ; preds = %82, %79
  %87 = phi i32 [ %81, %79 ], [ %85, %82 ]
  %88 = getelementptr [7 x i32], ptr %2, i32 %14, i32 4
  store i32 %87, ptr %88, align 4
  %89 = add i32 %13, 20
  %90 = load ptr, ptr %11, align 4
  %91 = getelementptr inbounds %struct.nouveau_drm, ptr %90, i32 0, i32 2, i32 3, i32 0, i32 6
  %92 = load ptr, ptr %91, align 8
  %93 = icmp eq ptr %92, null
  br i1 %93, label %97, label %94, !prof !8

94:                                               ; preds = %86
  %95 = getelementptr i8, ptr %92, i32 %89
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  br label %101

97:                                               ; preds = %86
  %98 = getelementptr inbounds %struct.nouveau_drm, ptr %90, i32 0, i32 2, i32 3
  %99 = zext i32 %89 to i64
  %100 = tail call i32 @nvif_object_rd(ptr noundef %98, i32 noundef 4, i64 noundef %99) #4
  br label %101

101:                                              ; preds = %97, %94
  %102 = phi i32 [ %96, %94 ], [ %100, %97 ]
  %103 = getelementptr [7 x i32], ptr %2, i32 %14, i32 5
  store i32 %102, ptr %103, align 4
  %104 = add i32 %13, 24
  %105 = load ptr, ptr %11, align 4
  %106 = getelementptr inbounds %struct.nouveau_drm, ptr %105, i32 0, i32 2, i32 3, i32 0, i32 6
  %107 = load ptr, ptr %106, align 8
  %108 = icmp eq ptr %107, null
  br i1 %108, label %112, label %109, !prof !8

109:                                              ; preds = %101
  %110 = getelementptr i8, ptr %107, i32 %104
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  br label %116

112:                                              ; preds = %101
  %113 = getelementptr inbounds %struct.nouveau_drm, ptr %105, i32 0, i32 2, i32 3
  %114 = zext i32 %104 to i64
  %115 = tail call i32 @nvif_object_rd(ptr noundef %113, i32 noundef 4, i64 noundef %114) #4
  br label %116

116:                                              ; preds = %112, %109
  %117 = phi i32 [ %111, %109 ], [ %115, %112 ]
  %118 = getelementptr [7 x i32], ptr %2, i32 %14, i32 6
  store i32 %117, ptr %118, align 4
  %119 = add nuw nsw i32 %14, 1
  %120 = icmp eq i32 %119, 4
  br i1 %120, label %124, label %121

121:                                              ; preds = %116
  %122 = getelementptr [4 x i32], ptr %4, i32 0, i32 %119
  %123 = load i32, ptr %122, align 4
  br label %12

124:                                              ; preds = %116
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv17_tv_state_load(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  br label %4

4:                                                ; preds = %26, %2
  %5 = phi i32 [ 0, %2 ], [ %27, %26 ]
  %6 = getelementptr [64 x i8], ptr %1, i32 0, i32 %5
  %7 = load i8, ptr %6, align 1
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 3, i32 0, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12, !prof !8

12:                                               ; preds = %4
  %13 = getelementptr i8, ptr %10, i32 53792
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %5) #4, !srcloc !10
  br label %16

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %15, i32 noundef 4, i64 noundef 53792, i32 noundef %5) #4
  br label %16

16:                                               ; preds = %14, %12
  %17 = zext i8 %7 to i32
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr inbounds %struct.nouveau_drm, ptr %18, i32 0, i32 2, i32 3, i32 0, i32 6
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22, !prof !8

22:                                               ; preds = %16
  %23 = getelementptr i8, ptr %20, i32 53796
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %17) #4, !srcloc !10
  br label %26

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.nouveau_drm, ptr %18, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %25, i32 noundef 4, i64 noundef 53796, i32 noundef %17) #4
  br label %26

26:                                               ; preds = %24, %22
  %27 = add nuw nsw i32 %5, 1
  %28 = icmp eq i32 %27, 64
  br i1 %28, label %29, label %4

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.nv17_tv_state, ptr %1, i32 0, i32 1
  tail call fastcc void @tv_load_filter(ptr noundef %0, i32 noundef 54032, ptr noundef %30)
  %31 = getelementptr inbounds %struct.nv17_tv_state, ptr %1, i32 0, i32 2
  tail call fastcc void @tv_load_filter(ptr noundef %0, i32 noundef 54160, ptr noundef %31)
  %32 = getelementptr inbounds %struct.nv17_tv_state, ptr %1, i32 0, i32 3
  tail call fastcc void @tv_load_filter(ptr noundef %0, i32 noundef 54544, ptr noundef %32)
  %33 = getelementptr inbounds %struct.nv17_tv_state, ptr %1, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = load ptr, ptr %3, align 4
  %36 = getelementptr inbounds %struct.nouveau_drm, ptr %35, i32 0, i32 2, i32 3, i32 0, i32 6
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39, !prof !8

39:                                               ; preds = %29
  %40 = getelementptr i8, ptr %37, i32 53760
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %34) #4, !srcloc !10
  br label %43

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.nouveau_drm, ptr %35, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %42, i32 noundef 4, i64 noundef 53760, i32 noundef %34) #4
  br label %43

43:                                               ; preds = %41, %39
  %44 = getelementptr inbounds %struct.nv17_tv_state, ptr %1, i32 0, i32 5
  %45 = load i32, ptr %44, align 4
  %46 = load ptr, ptr %3, align 4
  %47 = getelementptr inbounds %struct.nouveau_drm, ptr %46, i32 0, i32 2, i32 3, i32 0, i32 6
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50, !prof !8

50:                                               ; preds = %43
  %51 = getelementptr i8, ptr %48, i32 53764
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %45) #4, !srcloc !10
  br label %54

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.nouveau_drm, ptr %46, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %53, i32 noundef 4, i64 noundef 53764, i32 noundef %45) #4
  br label %54

54:                                               ; preds = %52, %50
  %55 = getelementptr inbounds %struct.nv17_tv_state, ptr %1, i32 0, i32 6
  %56 = load i32, ptr %55, align 4
  %57 = load ptr, ptr %3, align 4
  %58 = getelementptr inbounds %struct.nouveau_drm, ptr %57, i32 0, i32 2, i32 3, i32 0, i32 6
  %59 = load ptr, ptr %58, align 8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61, !prof !8

61:                                               ; preds = %54
  %62 = getelementptr i8, ptr %59, i32 53768
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %56) #4, !srcloc !10
  br label %65

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.nouveau_drm, ptr %57, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %64, i32 noundef 4, i64 noundef 53768, i32 noundef %56) #4
  br label %65

65:                                               ; preds = %63, %61
  %66 = getelementptr inbounds %struct.nv17_tv_state, ptr %1, i32 0, i32 7
  %67 = load i32, ptr %66, align 4
  %68 = load ptr, ptr %3, align 4
  %69 = getelementptr inbounds %struct.nouveau_drm, ptr %68, i32 0, i32 2, i32 3, i32 0, i32 6
  %70 = load ptr, ptr %69, align 8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72, !prof !8

72:                                               ; preds = %65
  %73 = getelementptr i8, ptr %70, i32 53772
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %67) #4, !srcloc !10
  br label %76

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.nouveau_drm, ptr %68, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %75, i32 noundef 4, i64 noundef 53772, i32 noundef %67) #4
  br label %76

76:                                               ; preds = %74, %72
  %77 = getelementptr inbounds %struct.nv17_tv_state, ptr %1, i32 0, i32 8
  %78 = load i32, ptr %77, align 4
  %79 = load ptr, ptr %3, align 4
  %80 = getelementptr inbounds %struct.nouveau_drm, ptr %79, i32 0, i32 2, i32 3, i32 0, i32 6
  %81 = load ptr, ptr %80, align 8
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83, !prof !8

83:                                               ; preds = %76
  %84 = getelementptr i8, ptr %81, i32 54020
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %78) #4, !srcloc !10
  br label %87

85:                                               ; preds = %76
  %86 = getelementptr inbounds %struct.nouveau_drm, ptr %79, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %86, i32 noundef 4, i64 noundef 54020, i32 noundef %78) #4
  br label %87

87:                                               ; preds = %85, %83
  %88 = getelementptr inbounds %struct.nv17_tv_state, ptr %1, i32 0, i32 9
  %89 = load i32, ptr %88, align 4
  %90 = load ptr, ptr %3, align 4
  %91 = getelementptr inbounds %struct.nouveau_drm, ptr %90, i32 0, i32 2, i32 3, i32 0, i32 6
  %92 = load ptr, ptr %91, align 8
  %93 = icmp eq ptr %92, null
  br i1 %93, label %96, label %94, !prof !8

94:                                               ; preds = %87
  %95 = getelementptr i8, ptr %92, i32 54528
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %89) #4, !srcloc !10
  br label %98

96:                                               ; preds = %87
  %97 = getelementptr inbounds %struct.nouveau_drm, ptr %90, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %97, i32 noundef 4, i64 noundef 54528, i32 noundef %89) #4
  br label %98

98:                                               ; preds = %96, %94
  %99 = getelementptr inbounds %struct.nv17_tv_state, ptr %1, i32 0, i32 10
  %100 = load i32, ptr %99, align 4
  %101 = load ptr, ptr %3, align 4
  %102 = getelementptr inbounds %struct.nouveau_drm, ptr %101, i32 0, i32 2, i32 3, i32 0, i32 6
  %103 = load ptr, ptr %102, align 8
  %104 = icmp eq ptr %103, null
  br i1 %104, label %107, label %105, !prof !8

105:                                              ; preds = %98
  %106 = getelementptr i8, ptr %103, i32 54532
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %100) #4, !srcloc !10
  br label %109

107:                                              ; preds = %98
  %108 = getelementptr inbounds %struct.nouveau_drm, ptr %101, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %108, i32 noundef 4, i64 noundef 54532, i32 noundef %100) #4
  br label %109

109:                                              ; preds = %107, %105
  %110 = getelementptr inbounds %struct.nv17_tv_state, ptr %1, i32 0, i32 11
  %111 = load i32, ptr %110, align 4
  %112 = load ptr, ptr %3, align 4
  %113 = getelementptr inbounds %struct.nouveau_drm, ptr %112, i32 0, i32 2, i32 3, i32 0, i32 6
  %114 = load ptr, ptr %113, align 8
  %115 = icmp eq ptr %114, null
  br i1 %115, label %118, label %116, !prof !8

116:                                              ; preds = %109
  %117 = getelementptr i8, ptr %114, i32 54536
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %111) #4, !srcloc !10
  br label %120

118:                                              ; preds = %109
  %119 = getelementptr inbounds %struct.nouveau_drm, ptr %112, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %119, i32 noundef 4, i64 noundef 54536, i32 noundef %111) #4
  br label %120

120:                                              ; preds = %118, %116
  %121 = getelementptr inbounds %struct.nv17_tv_state, ptr %1, i32 0, i32 12
  %122 = load i32, ptr %121, align 4
  %123 = load ptr, ptr %3, align 4
  %124 = getelementptr inbounds %struct.nouveau_drm, ptr %123, i32 0, i32 2, i32 3, i32 0, i32 6
  %125 = load ptr, ptr %124, align 8
  %126 = icmp eq ptr %125, null
  br i1 %126, label %129, label %127, !prof !8

127:                                              ; preds = %120
  %128 = getelementptr i8, ptr %125, i32 54784
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %122) #4, !srcloc !10
  br label %131

129:                                              ; preds = %120
  %130 = getelementptr inbounds %struct.nouveau_drm, ptr %123, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %130, i32 noundef 4, i64 noundef 54784, i32 noundef %122) #4
  br label %131

131:                                              ; preds = %129, %127
  %132 = getelementptr inbounds %struct.nv17_tv_state, ptr %1, i32 0, i32 13
  %133 = load i32, ptr %132, align 4
  %134 = load ptr, ptr %3, align 4
  %135 = getelementptr inbounds %struct.nouveau_drm, ptr %134, i32 0, i32 2, i32 3, i32 0, i32 6
  %136 = load ptr, ptr %135, align 8
  %137 = icmp eq ptr %136, null
  br i1 %137, label %140, label %138, !prof !8

138:                                              ; preds = %131
  %139 = getelementptr i8, ptr %136, i32 54788
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %133) #4, !srcloc !10
  br label %142

140:                                              ; preds = %131
  %141 = getelementptr inbounds %struct.nouveau_drm, ptr %134, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %141, i32 noundef 4, i64 noundef 54788, i32 noundef %133) #4
  br label %142

142:                                              ; preds = %140, %138
  %143 = getelementptr inbounds %struct.nv17_tv_state, ptr %1, i32 0, i32 14
  %144 = load i32, ptr %143, align 4
  %145 = load ptr, ptr %3, align 4
  %146 = getelementptr inbounds %struct.nouveau_drm, ptr %145, i32 0, i32 2, i32 3, i32 0, i32 6
  %147 = load ptr, ptr %146, align 8
  %148 = icmp eq ptr %147, null
  br i1 %148, label %151, label %149, !prof !8

149:                                              ; preds = %142
  %150 = getelementptr i8, ptr %147, i32 54792
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 %144) #4, !srcloc !10
  br label %153

151:                                              ; preds = %142
  %152 = getelementptr inbounds %struct.nouveau_drm, ptr %145, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %152, i32 noundef 4, i64 noundef 54792, i32 noundef %144) #4
  br label %153

153:                                              ; preds = %151, %149
  %154 = getelementptr inbounds %struct.nv17_tv_state, ptr %1, i32 0, i32 15
  %155 = load i32, ptr %154, align 4
  %156 = load ptr, ptr %3, align 4
  %157 = getelementptr inbounds %struct.nouveau_drm, ptr %156, i32 0, i32 2, i32 3, i32 0, i32 6
  %158 = load ptr, ptr %157, align 8
  %159 = icmp eq ptr %158, null
  br i1 %159, label %162, label %160, !prof !8

160:                                              ; preds = %153
  %161 = getelementptr i8, ptr %158, i32 54796
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %161, i32 %155) #4, !srcloc !10
  br label %164

162:                                              ; preds = %153
  %163 = getelementptr inbounds %struct.nouveau_drm, ptr %156, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %163, i32 noundef 4, i64 noundef 54796, i32 noundef %155) #4
  br label %164

164:                                              ; preds = %162, %160
  %165 = getelementptr inbounds %struct.nv17_tv_state, ptr %1, i32 0, i32 16
  %166 = load i32, ptr %165, align 4
  %167 = load ptr, ptr %3, align 4
  %168 = getelementptr inbounds %struct.nouveau_drm, ptr %167, i32 0, i32 2, i32 3, i32 0, i32 6
  %169 = load ptr, ptr %168, align 8
  %170 = icmp eq ptr %169, null
  br i1 %170, label %173, label %171, !prof !8

171:                                              ; preds = %164
  %172 = getelementptr i8, ptr %169, i32 54800
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %172, i32 %166) #4, !srcloc !10
  br label %175

173:                                              ; preds = %164
  %174 = getelementptr inbounds %struct.nouveau_drm, ptr %167, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %174, i32 noundef 4, i64 noundef 54800, i32 noundef %166) #4
  br label %175

175:                                              ; preds = %173, %171
  %176 = getelementptr inbounds %struct.nv17_tv_state, ptr %1, i32 0, i32 17
  %177 = load i32, ptr %176, align 4
  %178 = load ptr, ptr %3, align 4
  %179 = getelementptr inbounds %struct.nouveau_drm, ptr %178, i32 0, i32 2, i32 3, i32 0, i32 6
  %180 = load ptr, ptr %179, align 8
  %181 = icmp eq ptr %180, null
  br i1 %181, label %184, label %182, !prof !8

182:                                              ; preds = %175
  %183 = getelementptr i8, ptr %180, i32 54804
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %183, i32 %177) #4, !srcloc !10
  br label %186

184:                                              ; preds = %175
  %185 = getelementptr inbounds %struct.nouveau_drm, ptr %178, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %185, i32 noundef 4, i64 noundef 54804, i32 noundef %177) #4
  br label %186

186:                                              ; preds = %184, %182
  %187 = load ptr, ptr %3, align 4
  %188 = getelementptr inbounds %struct.nouveau_drm, ptr %187, i32 0, i32 2, i32 3, i32 0, i32 6
  %189 = load ptr, ptr %188, align 8
  %190 = icmp eq ptr %189, null
  br i1 %190, label %193, label %191, !prof !8

191:                                              ; preds = %186
  %192 = getelementptr i8, ptr %189, i32 53792
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %192, i32 62) #4, !srcloc !10
  br label %195

193:                                              ; preds = %186
  %194 = getelementptr inbounds %struct.nouveau_drm, ptr %187, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %194, i32 noundef 4, i64 noundef 53792, i32 noundef 62) #4
  br label %195

195:                                              ; preds = %193, %191
  %196 = load ptr, ptr %3, align 4
  %197 = getelementptr inbounds %struct.nouveau_drm, ptr %196, i32 0, i32 2, i32 3, i32 0, i32 6
  %198 = load ptr, ptr %197, align 8
  %199 = icmp eq ptr %198, null
  br i1 %199, label %202, label %200, !prof !8

200:                                              ; preds = %195
  %201 = getelementptr i8, ptr %198, i32 53796
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %201, i32 1) #4, !srcloc !10
  br label %204

202:                                              ; preds = %195
  %203 = getelementptr inbounds %struct.nouveau_drm, ptr %196, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %203, i32 noundef 4, i64 noundef 53796, i32 noundef 1) #4
  br label %204

204:                                              ; preds = %202, %200
  %205 = load ptr, ptr %3, align 4
  %206 = getelementptr inbounds %struct.nouveau_drm, ptr %205, i32 0, i32 2, i32 3, i32 0, i32 6
  %207 = load ptr, ptr %206, align 8
  %208 = icmp eq ptr %207, null
  br i1 %208, label %211, label %209, !prof !8

209:                                              ; preds = %204
  %210 = getelementptr i8, ptr %207, i32 53792
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %210, i32 62) #4, !srcloc !10
  br label %213

211:                                              ; preds = %204
  %212 = getelementptr inbounds %struct.nouveau_drm, ptr %205, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %212, i32 noundef 4, i64 noundef 53792, i32 noundef 62) #4
  br label %213

213:                                              ; preds = %211, %209
  %214 = load ptr, ptr %3, align 4
  %215 = getelementptr inbounds %struct.nouveau_drm, ptr %214, i32 0, i32 2, i32 3, i32 0, i32 6
  %216 = load ptr, ptr %215, align 8
  %217 = icmp eq ptr %216, null
  br i1 %217, label %220, label %218, !prof !8

218:                                              ; preds = %213
  %219 = getelementptr i8, ptr %216, i32 53796
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %219, i32 0) #4, !srcloc !10
  br label %222

220:                                              ; preds = %213
  %221 = getelementptr inbounds %struct.nouveau_drm, ptr %214, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %221, i32 noundef 4, i64 noundef 53796, i32 noundef 0) #4
  br label %222

222:                                              ; preds = %220, %218
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tv_load_filter(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = add i32 %1, 28
  %5 = add i32 %1, 64
  %6 = add i32 %1, 92
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  br label %8

8:                                                ; preds = %23, %3
  %9 = phi i32 [ 0, %3 ], [ %24, %23 ]
  %10 = shl i32 %9, 2
  %11 = add i32 %10, %1
  %12 = getelementptr [7 x i32], ptr %2, i32 0, i32 %9
  %13 = load i32, ptr %12, align 4
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr inbounds %struct.nouveau_drm, ptr %14, i32 0, i32 2, i32 3, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18, !prof !8

18:                                               ; preds = %8
  %19 = getelementptr i8, ptr %16, i32 %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %13) #4, !srcloc !10
  br label %23

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.nouveau_drm, ptr %14, i32 0, i32 2, i32 3
  %22 = zext i32 %11 to i64
  tail call void @nvif_object_wr(ptr noundef %21, i32 noundef 4, i64 noundef %22, i32 noundef %13) #4
  br label %23

23:                                               ; preds = %20, %18
  %24 = add nuw nsw i32 %9, 1
  %25 = icmp eq i32 %24, 7
  br i1 %25, label %26, label %8

26:                                               ; preds = %41, %23
  %27 = phi i32 [ %42, %41 ], [ 0, %23 ]
  %28 = shl i32 %27, 2
  %29 = add i32 %4, %28
  %30 = getelementptr [7 x i32], ptr %2, i32 1, i32 %27
  %31 = load i32, ptr %30, align 4
  %32 = load ptr, ptr %7, align 4
  %33 = getelementptr inbounds %struct.nouveau_drm, ptr %32, i32 0, i32 2, i32 3, i32 0, i32 6
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36, !prof !8

36:                                               ; preds = %26
  %37 = getelementptr i8, ptr %34, i32 %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %31) #4, !srcloc !10
  br label %41

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.nouveau_drm, ptr %32, i32 0, i32 2, i32 3
  %40 = zext i32 %29 to i64
  tail call void @nvif_object_wr(ptr noundef %39, i32 noundef 4, i64 noundef %40, i32 noundef %31) #4
  br label %41

41:                                               ; preds = %38, %36
  %42 = add nuw nsw i32 %27, 1
  %43 = icmp eq i32 %42, 7
  br i1 %43, label %44, label %26

44:                                               ; preds = %59, %41
  %45 = phi i32 [ %60, %59 ], [ 0, %41 ]
  %46 = shl i32 %45, 2
  %47 = add i32 %5, %46
  %48 = getelementptr [7 x i32], ptr %2, i32 2, i32 %45
  %49 = load i32, ptr %48, align 4
  %50 = load ptr, ptr %7, align 4
  %51 = getelementptr inbounds %struct.nouveau_drm, ptr %50, i32 0, i32 2, i32 3, i32 0, i32 6
  %52 = load ptr, ptr %51, align 8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54, !prof !8

54:                                               ; preds = %44
  %55 = getelementptr i8, ptr %52, i32 %47
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %49) #4, !srcloc !10
  br label %59

56:                                               ; preds = %44
  %57 = getelementptr inbounds %struct.nouveau_drm, ptr %50, i32 0, i32 2, i32 3
  %58 = zext i32 %47 to i64
  tail call void @nvif_object_wr(ptr noundef %57, i32 noundef 4, i64 noundef %58, i32 noundef %49) #4
  br label %59

59:                                               ; preds = %56, %54
  %60 = add nuw nsw i32 %45, 1
  %61 = icmp eq i32 %60, 7
  br i1 %61, label %62, label %44

62:                                               ; preds = %77, %59
  %63 = phi i32 [ %78, %77 ], [ 0, %59 ]
  %64 = shl i32 %63, 2
  %65 = add i32 %6, %64
  %66 = getelementptr [7 x i32], ptr %2, i32 3, i32 %63
  %67 = load i32, ptr %66, align 4
  %68 = load ptr, ptr %7, align 4
  %69 = getelementptr inbounds %struct.nouveau_drm, ptr %68, i32 0, i32 2, i32 3, i32 0, i32 6
  %70 = load ptr, ptr %69, align 8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72, !prof !8

72:                                               ; preds = %62
  %73 = getelementptr i8, ptr %70, i32 %65
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %67) #4, !srcloc !10
  br label %77

74:                                               ; preds = %62
  %75 = getelementptr inbounds %struct.nouveau_drm, ptr %68, i32 0, i32 2, i32 3
  %76 = zext i32 %65 to i64
  tail call void @nvif_object_wr(ptr noundef %75, i32 noundef 4, i64 noundef %76, i32 noundef %67) #4
  br label %77

77:                                               ; preds = %74, %72
  %78 = add nuw nsw i32 %63, 1
  %79 = icmp eq i32 %78, 7
  br i1 %79, label %80, label %62

80:                                               ; preds = %77
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv17_tv_update_properties(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 9
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi i32 [ %10, %8 ], [ %6, %1 ]
  switch i32 %12, label %13 [
    i32 5, label %16
    i32 6, label %27
    i32 8, label %30
    i32 9, label %33
  ]

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1, i32 5
  %15 = load i32, ptr %14, align 4
  br label %36

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1, i32 5
  %18 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 10
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 4
  %21 = icmp eq i32 %20, 0
  %22 = and i32 %19, 2
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 1114114, i32 1048578
  %25 = select i1 %21, i32 %24, i32 65538
  store i32 %25, ptr %17, align 4
  %26 = getelementptr %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1, i32 0, i32 7
  store i8 16, ptr %26, align 1
  br label %36

27:                                               ; preds = %11
  %28 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1, i32 5
  store i32 69650, ptr %28, align 4
  %29 = getelementptr %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1, i32 0, i32 7
  store i8 24, ptr %29, align 1
  br label %36

30:                                               ; preds = %11
  %31 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1, i32 5
  store i32 1119027, ptr %31, align 4
  %32 = getelementptr %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1, i32 0, i32 7
  store i8 20, ptr %32, align 1
  br label %36

33:                                               ; preds = %11
  %34 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1, i32 5
  store i32 1118226, ptr %34, align 4
  %35 = getelementptr %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1, i32 0, i32 7
  store i8 24, ptr %35, align 1
  br label %36

36:                                               ; preds = %33, %30, %27, %16, %13
  %37 = phi i32 [ %15, %13 ], [ 1118226, %33 ], [ 1119027, %30 ], [ 69650, %27 ], [ %25, %16 ]
  %38 = getelementptr [12 x %struct.nv17_tv_norm_params], ptr @nv17_tv_norms, i32 0, i32 %4, i32 1, i32 0, i32 0, i32 5
  %39 = getelementptr [64 x i8], ptr %38, i32 0, i32 32
  %40 = load i8, ptr %39, align 4
  %41 = zext i8 %40 to i32
  %42 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 5
  %43 = load i32, ptr %42, align 4
  %44 = icmp slt i32 %43, 50
  %45 = xor i32 %41, 255
  %46 = select i1 %44, i32 %41, i32 %45
  %47 = add i32 %43, -50
  %48 = mul i32 %46, %47
  %49 = sdiv i32 %48, 50
  %50 = trunc i32 %49 to i8
  %51 = add i8 %40, %50
  %52 = getelementptr %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1, i32 0, i32 32
  store i8 %51, ptr %52, align 4
  %53 = getelementptr [64 x i8], ptr %38, i32 0, i32 34
  %54 = load i8, ptr %53, align 2
  %55 = zext i8 %54 to i32
  %56 = xor i32 %55, 255
  %57 = select i1 %44, i32 %55, i32 %56
  %58 = mul i32 %57, %47
  %59 = sdiv i32 %58, 50
  %60 = trunc i32 %59 to i8
  %61 = add i8 %54, %60
  %62 = getelementptr %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1, i32 0, i32 34
  store i8 %61, ptr %62, align 2
  %63 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 6
  %64 = load i32, ptr %63, align 4
  %65 = mul i32 %64, 255
  %66 = sdiv i32 %65, 100
  %67 = trunc i32 %66 to i8
  %68 = getelementptr %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1, i32 0, i32 37
  store i8 %67, ptr %68, align 1
  %69 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.nouveau_drm, ptr %70, i32 0, i32 2, i32 3, i32 0, i32 6
  %72 = load ptr, ptr %71, align 8
  %73 = icmp eq ptr %72, null
  br i1 %73, label %76, label %74, !prof !8

74:                                               ; preds = %36
  %75 = getelementptr i8, ptr %72, i32 53764
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %37) #4, !srcloc !10
  br label %78

76:                                               ; preds = %36
  %77 = getelementptr inbounds %struct.nouveau_drm, ptr %70, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %77, i32 noundef 4, i64 noundef 53764, i32 noundef %37) #4
  br label %78

78:                                               ; preds = %76, %74
  %79 = getelementptr %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1, i32 0, i32 7
  %80 = load i8, ptr %79, align 1
  %81 = load ptr, ptr %69, align 4
  %82 = getelementptr inbounds %struct.nouveau_drm, ptr %81, i32 0, i32 2, i32 3, i32 0, i32 6
  %83 = load ptr, ptr %82, align 8
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85, !prof !8

85:                                               ; preds = %78
  %86 = getelementptr i8, ptr %83, i32 53792
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 7) #4, !srcloc !10
  br label %89

87:                                               ; preds = %78
  %88 = getelementptr inbounds %struct.nouveau_drm, ptr %81, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %88, i32 noundef 4, i64 noundef 53792, i32 noundef 7) #4
  br label %89

89:                                               ; preds = %87, %85
  %90 = zext i8 %80 to i32
  %91 = load ptr, ptr %69, align 4
  %92 = getelementptr inbounds %struct.nouveau_drm, ptr %91, i32 0, i32 2, i32 3, i32 0, i32 6
  %93 = load ptr, ptr %92, align 8
  %94 = icmp eq ptr %93, null
  br i1 %94, label %97, label %95, !prof !8

95:                                               ; preds = %89
  %96 = getelementptr i8, ptr %93, i32 53796
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %90) #4, !srcloc !10
  br label %99

97:                                               ; preds = %89
  %98 = getelementptr inbounds %struct.nouveau_drm, ptr %91, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %98, i32 noundef 4, i64 noundef 53796, i32 noundef %90) #4
  br label %99

99:                                               ; preds = %97, %95
  %100 = load i8, ptr %52, align 4
  %101 = load ptr, ptr %69, align 4
  %102 = getelementptr inbounds %struct.nouveau_drm, ptr %101, i32 0, i32 2, i32 3, i32 0, i32 6
  %103 = load ptr, ptr %102, align 8
  %104 = icmp eq ptr %103, null
  br i1 %104, label %107, label %105, !prof !8

105:                                              ; preds = %99
  %106 = getelementptr i8, ptr %103, i32 53792
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 32) #4, !srcloc !10
  br label %109

107:                                              ; preds = %99
  %108 = getelementptr inbounds %struct.nouveau_drm, ptr %101, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %108, i32 noundef 4, i64 noundef 53792, i32 noundef 32) #4
  br label %109

109:                                              ; preds = %107, %105
  %110 = zext i8 %100 to i32
  %111 = load ptr, ptr %69, align 4
  %112 = getelementptr inbounds %struct.nouveau_drm, ptr %111, i32 0, i32 2, i32 3, i32 0, i32 6
  %113 = load ptr, ptr %112, align 8
  %114 = icmp eq ptr %113, null
  br i1 %114, label %117, label %115, !prof !8

115:                                              ; preds = %109
  %116 = getelementptr i8, ptr %113, i32 53796
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %110) #4, !srcloc !10
  br label %119

117:                                              ; preds = %109
  %118 = getelementptr inbounds %struct.nouveau_drm, ptr %111, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %118, i32 noundef 4, i64 noundef 53796, i32 noundef %110) #4
  br label %119

119:                                              ; preds = %117, %115
  %120 = load i8, ptr %62, align 2
  %121 = load ptr, ptr %69, align 4
  %122 = getelementptr inbounds %struct.nouveau_drm, ptr %121, i32 0, i32 2, i32 3, i32 0, i32 6
  %123 = load ptr, ptr %122, align 8
  %124 = icmp eq ptr %123, null
  br i1 %124, label %127, label %125, !prof !8

125:                                              ; preds = %119
  %126 = getelementptr i8, ptr %123, i32 53792
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 34) #4, !srcloc !10
  br label %129

127:                                              ; preds = %119
  %128 = getelementptr inbounds %struct.nouveau_drm, ptr %121, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %128, i32 noundef 4, i64 noundef 53792, i32 noundef 34) #4
  br label %129

129:                                              ; preds = %127, %125
  %130 = zext i8 %120 to i32
  %131 = load ptr, ptr %69, align 4
  %132 = getelementptr inbounds %struct.nouveau_drm, ptr %131, i32 0, i32 2, i32 3, i32 0, i32 6
  %133 = load ptr, ptr %132, align 8
  %134 = icmp eq ptr %133, null
  br i1 %134, label %137, label %135, !prof !8

135:                                              ; preds = %129
  %136 = getelementptr i8, ptr %133, i32 53796
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 %130) #4, !srcloc !10
  br label %139

137:                                              ; preds = %129
  %138 = getelementptr inbounds %struct.nouveau_drm, ptr %131, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %138, i32 noundef 4, i64 noundef 53796, i32 noundef %130) #4
  br label %139

139:                                              ; preds = %137, %135
  %140 = load i8, ptr %68, align 1
  %141 = load ptr, ptr %69, align 4
  %142 = getelementptr inbounds %struct.nouveau_drm, ptr %141, i32 0, i32 2, i32 3, i32 0, i32 6
  %143 = load ptr, ptr %142, align 8
  %144 = icmp eq ptr %143, null
  br i1 %144, label %147, label %145, !prof !8

145:                                              ; preds = %139
  %146 = getelementptr i8, ptr %143, i32 53792
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 37) #4, !srcloc !10
  br label %149

147:                                              ; preds = %139
  %148 = getelementptr inbounds %struct.nouveau_drm, ptr %141, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %148, i32 noundef 4, i64 noundef 53792, i32 noundef 37) #4
  br label %149

149:                                              ; preds = %147, %145
  %150 = zext i8 %140 to i32
  %151 = load ptr, ptr %69, align 4
  %152 = getelementptr inbounds %struct.nouveau_drm, ptr %151, i32 0, i32 2, i32 3, i32 0, i32 6
  %153 = load ptr, ptr %152, align 8
  %154 = icmp eq ptr %153, null
  br i1 %154, label %157, label %155, !prof !8

155:                                              ; preds = %149
  %156 = getelementptr i8, ptr %153, i32 53796
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %156, i32 %150) #4, !srcloc !10
  br label %159

157:                                              ; preds = %149
  %158 = getelementptr inbounds %struct.nouveau_drm, ptr %151, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %158, i32 noundef 4, i64 noundef 53796, i32 noundef %150) #4
  br label %159

159:                                              ; preds = %157, %155
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv17_tv_update_rescaler(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [2 x ptr], align 8
  %3 = alloca [2 x i64], align 8
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %6, 50
  %8 = select i1 %7, i32 -31, i32 -32
  %9 = add i32 %6, -50
  %10 = mul i32 %8, %9
  %11 = sdiv i32 %10, 50
  %12 = add nsw i32 %11, 225
  %13 = shl i32 %12, 8
  %14 = or i32 %13, 64
  %15 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1, i32 6
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #4
  %20 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1, i32 1
  store ptr %20, ptr %2, align 8
  %21 = getelementptr inbounds ptr, ptr %2, i32 1
  %22 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1, i32 3
  store ptr %22, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, -50
  %26 = sext i32 %25 to i64
  %27 = mul nsw i64 %26, 167772
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #4
  store i64 0, ptr %3, align 8, !annotation !13
  %28 = getelementptr inbounds %struct.drm_crtc, ptr %19, i32 0, i32 12, i32 1
  %29 = load i16, ptr %28, align 4
  %30 = zext i16 %29 to i64
  %31 = shl nuw nsw i64 %30, 24
  %32 = getelementptr inbounds i64, ptr %3, i32 1
  %33 = getelementptr inbounds %struct.drm_crtc, ptr %19, i32 0, i32 12, i32 6
  %34 = load i16, ptr %33, align 2
  %35 = zext i16 %34 to i64
  %36 = shl nuw nsw i64 %35, 24
  %37 = getelementptr [12 x %struct.nv17_tv_norm_params], ptr @nv17_tv_norms, i32 0, i32 %17, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = mul i32 %38, %12
  %40 = icmp ult i16 %29, 256
  br i1 %40, label %41, label %45, !prof !14

41:                                               ; preds = %1
  %42 = trunc i64 %31 to i32
  %43 = udiv i32 %42, %39
  %44 = zext i32 %43 to i64
  br label %48

45:                                               ; preds = %1
  %46 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %39, i64 %31) #5, !srcloc !15
  %47 = extractvalue { i64, i64 } %46, 1
  br label %48

48:                                               ; preds = %45, %41
  %49 = phi i64 [ %47, %45 ], [ %44, %41 ]
  store i64 %49, ptr %3, align 8
  %50 = getelementptr inbounds %struct.anon, ptr %37, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = mul i32 %51, %12
  %53 = icmp ult i16 %34, 256
  br i1 %53, label %54, label %58, !prof !14

54:                                               ; preds = %48
  %55 = trunc i64 %36 to i32
  %56 = udiv i32 %55, %52
  %57 = zext i32 %56 to i64
  br label %61

58:                                               ; preds = %48
  %59 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %52, i64 %36) #5, !srcloc !15
  %60 = extractvalue { i64, i64 } %59, 1
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i64 [ %60, %58 ], [ %57, %54 ]
  store i64 %62, ptr %32, align 8
  br label %63

63:                                               ; preds = %149, %61
  %64 = phi ptr [ %20, %61 ], [ %153, %149 ]
  %65 = phi i64 [ %49, %61 ], [ %151, %149 ]
  %66 = phi i32 [ 0, %61 ], [ %147, %149 ]
  %67 = getelementptr [2 x i64], ptr %3, i32 0, i32 %66
  %68 = tail call i64 @llvm.smax.i64(i64 %65, i64 65536) #4
  store i64 %68, ptr %67, align 8
  br label %69

69:                                               ; preds = %143, %63
  %70 = phi i32 [ 0, %63 ], [ %144, %143 ]
  %71 = getelementptr [2 x [4 x %struct.filter_params]], ptr @fparams, i32 0, i32 %66, i32 %70
  %72 = load i64, ptr %71, align 8
  %73 = getelementptr [2 x [4 x %struct.filter_params]], ptr @fparams, i32 0, i32 %66, i32 %70, i32 1
  %74 = load i64, ptr %73, align 8
  %75 = getelementptr [2 x [4 x %struct.filter_params]], ptr @fparams, i32 0, i32 %66, i32 %70, i32 2
  %76 = load i64, ptr %75, align 8
  %77 = getelementptr [2 x [4 x %struct.filter_params]], ptr @fparams, i32 0, i32 %66, i32 %70, i32 3
  %78 = load i64, ptr %77, align 8
  %79 = getelementptr [2 x [4 x %struct.filter_params]], ptr @fparams, i32 0, i32 %66, i32 %70, i32 4
  %80 = load i64, ptr %79, align 8
  %81 = getelementptr [2 x [4 x %struct.filter_params]], ptr @fparams, i32 0, i32 %66, i32 %70, i32 5
  %82 = load i64, ptr %81, align 8
  %83 = getelementptr [2 x [4 x %struct.filter_params]], ptr @fparams, i32 0, i32 %66, i32 %70, i32 6
  %84 = load i64, ptr %83, align 8
  %85 = getelementptr [2 x [4 x %struct.filter_params]], ptr @fparams, i32 0, i32 %66, i32 %70, i32 7
  %86 = load i64, ptr %85, align 8
  %87 = getelementptr [2 x [4 x %struct.filter_params]], ptr @fparams, i32 0, i32 %66, i32 %70, i32 8
  %88 = load i64, ptr %87, align 8
  %89 = getelementptr [2 x [4 x %struct.filter_params]], ptr @fparams, i32 0, i32 %66, i32 %70, i32 9
  %90 = load i64, ptr %89, align 8
  %91 = getelementptr [2 x [4 x %struct.filter_params]], ptr @fparams, i32 0, i32 %66, i32 %70, i32 10
  %92 = load i64, ptr %91, align 8
  %93 = getelementptr [2 x [4 x %struct.filter_params]], ptr @fparams, i32 0, i32 %66, i32 %70, i32 11
  %94 = load i64, ptr %93, align 8
  %95 = getelementptr [2 x [4 x %struct.filter_params]], ptr @fparams, i32 0, i32 %66, i32 %70, i32 12
  %96 = load i64, ptr %95, align 8
  %97 = getelementptr [2 x [4 x %struct.filter_params]], ptr @fparams, i32 0, i32 %66, i32 %70, i32 13
  %98 = load i64, ptr %97, align 8
  %99 = getelementptr [2 x [4 x %struct.filter_params]], ptr @fparams, i32 0, i32 %66, i32 %70, i32 14
  %100 = load i64, ptr %99, align 8
  %101 = getelementptr [2 x [4 x %struct.filter_params]], ptr @fparams, i32 0, i32 %66, i32 %70, i32 15
  %102 = load i64, ptr %101, align 8
  %103 = add i64 %72, 140737488355328
  br label %104

104:                                              ; preds = %104, %69
  %105 = phi i32 [ 0, %69 ], [ %141, %104 ]
  %106 = zext i32 %105 to i64
  %107 = mul i64 %78, %106
  %108 = mul i64 %86, %106
  %109 = add i64 %108, %84
  %110 = mul i64 %109, %106
  %111 = add i64 %110, %82
  %112 = mul i64 %111, %106
  %113 = add i64 %112, %80
  %114 = mul i64 %113, %68
  %115 = mul i64 %94, %106
  %116 = add i64 %115, %92
  %117 = mul i64 %116, %106
  %118 = add i64 %117, %90
  %119 = mul i64 %118, %106
  %120 = add i64 %119, %88
  %121 = mul i64 %102, %106
  %122 = add i64 %121, %100
  %123 = mul i64 %122, %106
  %124 = add i64 %123, %98
  %125 = mul i64 %124, %106
  %126 = add i64 %125, %96
  %127 = mul i64 %126, %68
  %128 = add i64 %107, %76
  %129 = mul i64 %128, %106
  %130 = add i64 %129, %74
  %131 = mul i64 %130, %106
  %132 = add i64 %120, %127
  %133 = mul i64 %27, %132
  %134 = add i64 %103, %131
  %135 = add i64 %134, %114
  %136 = add i64 %135, %133
  %137 = ashr i64 %136, 39
  %138 = trunc i64 %137 to i32
  %139 = and i32 %138, -2147418624
  %140 = getelementptr [4 x [7 x i32]], ptr %64, i32 0, i32 %70, i32 %105
  store i32 %139, ptr %140, align 4
  %141 = add nuw nsw i32 %105, 1
  %142 = icmp eq i32 %141, 7
  br i1 %142, label %143, label %104

143:                                              ; preds = %104
  %144 = add nuw nsw i32 %70, 1
  %145 = icmp eq i32 %144, 4
  br i1 %145, label %146, label %69

146:                                              ; preds = %143
  %147 = add nuw nsw i32 %66, 1
  %148 = icmp eq i32 %147, 2
  br i1 %148, label %154, label %149

149:                                              ; preds = %146
  %150 = getelementptr [2 x i64], ptr %3, i32 0, i32 %147
  %151 = load i64, ptr %150, align 8
  %152 = getelementptr [2 x ptr], ptr %2, i32 0, i32 %147
  %153 = load ptr, ptr %152, align 4
  br label %63

154:                                              ; preds = %146
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #4
  %155 = load i32, ptr %15, align 4
  %156 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr inbounds %struct.nouveau_drm, ptr %157, i32 0, i32 2, i32 3, i32 0, i32 6
  %159 = load ptr, ptr %158, align 8
  %160 = icmp eq ptr %159, null
  br i1 %160, label %163, label %161, !prof !8

161:                                              ; preds = %154
  %162 = getelementptr i8, ptr %159, i32 53768
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 %155) #4, !srcloc !10
  br label %165

163:                                              ; preds = %154
  %164 = getelementptr inbounds %struct.nouveau_drm, ptr %157, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %164, i32 noundef 4, i64 noundef 53768, i32 noundef %155) #4
  br label %165

165:                                              ; preds = %163, %161
  tail call fastcc void @tv_load_filter(ptr noundef %4, i32 noundef 54032, ptr noundef %20)
  %166 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1, i32 2
  tail call fastcc void @tv_load_filter(ptr noundef %4, i32 noundef 54160, ptr noundef %166)
  tail call fastcc void @tv_load_filter(ptr noundef %4, i32 noundef 54544, ptr noundef %22)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv17_ctv_update_rescaler(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nouveau_crtc, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 19
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr [12 x %struct.nv17_tv_norm_params], ptr @nv17_tv_norms, i32 0, i32 %13, i32 1
  %15 = getelementptr inbounds %struct.drm_display_mode, ptr %14, i32 0, i32 11
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %1
  %23 = phi i32 [ %21, %19 ], [ 100, %1 ]
  %24 = getelementptr inbounds %struct.drm_display_mode, ptr %14, i32 0, i32 1
  %25 = load i16, ptr %24, align 4
  %26 = zext i16 %25 to i32
  %27 = getelementptr inbounds %struct.drm_crtc, ptr %4, i32 0, i32 12, i32 1
  %28 = load i16, ptr %27, align 4
  %29 = zext i16 %28 to i32
  %30 = sub nsw i32 %26, %29
  %31 = sdiv i32 %30, 2
  %32 = getelementptr inbounds %struct.drm_display_mode, ptr %14, i32 0, i32 6
  %33 = load i16, ptr %32, align 2
  %34 = zext i16 %33 to i32
  %35 = getelementptr inbounds %struct.drm_crtc, ptr %4, i32 0, i32 12, i32 6
  %36 = load i16, ptr %35, align 2
  %37 = zext i16 %36 to i32
  %38 = sub nsw i32 %34, %37
  %39 = sdiv i32 %38, 2
  %40 = udiv i16 %25, 20
  %41 = zext i16 %40 to i32
  %42 = tail call i32 @llvm.smin.i32(i32 %31, i32 %41)
  %43 = icmp slt i32 %23, 50
  %44 = sub nsw i32 %31, %42
  %45 = select i1 %43, i32 %42, i32 %44
  %46 = add i32 %23, -50
  %47 = mul i32 %45, %46
  %48 = sdiv i32 %47, 50
  %49 = add nsw i32 %48, %42
  %50 = udiv i16 %33, 20
  %51 = zext i16 %50 to i32
  %52 = tail call i32 @llvm.smin.i32(i32 %39, i32 %51)
  %53 = sub nsw i32 %39, %52
  %54 = select i1 %43, i32 %52, i32 %53
  %55 = mul i32 %54, %46
  %56 = sdiv i32 %55, 50
  %57 = add nsw i32 %56, %52
  %58 = shl nuw nsw i32 %29, 11
  %59 = mul nsw i32 %49, -2
  %60 = add nsw i32 %59, %26
  %61 = sdiv i32 %58, %60
  %62 = shl nuw nsw i32 %37, 11
  %63 = mul nsw i32 %57, -2
  %64 = add nsw i32 %63, %34
  %65 = sdiv i32 %62, %64
  %66 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %11, i32 0, i32 %6, i32 28, i32 5
  store i32 %49, ptr %66, align 4
  %67 = load i16, ptr %24, align 4
  %68 = zext i16 %67 to i32
  %69 = xor i32 %49, -1
  %70 = add i32 %69, %68
  %71 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %11, i32 0, i32 %6, i32 28, i32 6
  store i32 %70, ptr %71, align 4
  %72 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %11, i32 0, i32 %6, i32 29, i32 5
  store i32 %57, ptr %72, align 4
  %73 = load i16, ptr %32, align 2
  %74 = zext i16 %73 to i32
  %75 = xor i32 %57, -1
  %76 = add i32 %75, %74
  %77 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %11, i32 0, i32 %6, i32 29, i32 6
  store i32 %76, ptr %77, align 4
  %78 = shl i32 %65, 16
  %79 = and i32 %78, 268173312
  %80 = and i32 %61, 4095
  %81 = or i32 %80, %79
  %82 = or i32 %81, 268439552
  %83 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %11, i32 0, i32 %6, i32 34
  store i32 %82, ptr %83, align 4
  %84 = load ptr, ptr %7, align 4
  %85 = icmp eq i32 %6, 0
  %86 = select i1 %85, i32 6817844, i32 6826036
  %87 = getelementptr inbounds %struct.nouveau_drm, ptr %84, i32 0, i32 2, i32 3, i32 0, i32 6
  %88 = load ptr, ptr %87, align 8
  %89 = icmp eq ptr %88, null
  br i1 %89, label %92, label %90, !prof !8

90:                                               ; preds = %22
  %91 = getelementptr i8, ptr %88, i32 %86
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %49) #4, !srcloc !10
  br label %95

92:                                               ; preds = %22
  %93 = getelementptr inbounds %struct.nouveau_drm, ptr %84, i32 0, i32 2, i32 3
  %94 = zext i32 %86 to i64
  tail call void @nvif_object_wr(ptr noundef %93, i32 noundef 4, i64 noundef %94, i32 noundef %49) #4
  br label %95

95:                                               ; preds = %92, %90
  %96 = load i32, ptr %71, align 4
  %97 = load ptr, ptr %7, align 4
  %98 = select i1 %85, i32 6817848, i32 6826040
  %99 = getelementptr inbounds %struct.nouveau_drm, ptr %97, i32 0, i32 2, i32 3, i32 0, i32 6
  %100 = load ptr, ptr %99, align 8
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102, !prof !8

102:                                              ; preds = %95
  %103 = getelementptr i8, ptr %100, i32 %98
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %96) #4, !srcloc !10
  br label %107

104:                                              ; preds = %95
  %105 = getelementptr inbounds %struct.nouveau_drm, ptr %97, i32 0, i32 2, i32 3
  %106 = zext i32 %98 to i64
  tail call void @nvif_object_wr(ptr noundef %105, i32 noundef 4, i64 noundef %106, i32 noundef %96) #4
  br label %107

107:                                              ; preds = %104, %102
  %108 = load i32, ptr %72, align 4
  %109 = load ptr, ptr %7, align 4
  %110 = select i1 %85, i32 6817812, i32 6826004
  %111 = getelementptr inbounds %struct.nouveau_drm, ptr %109, i32 0, i32 2, i32 3, i32 0, i32 6
  %112 = load ptr, ptr %111, align 8
  %113 = icmp eq ptr %112, null
  br i1 %113, label %116, label %114, !prof !8

114:                                              ; preds = %107
  %115 = getelementptr i8, ptr %112, i32 %110
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %108) #4, !srcloc !10
  br label %119

116:                                              ; preds = %107
  %117 = getelementptr inbounds %struct.nouveau_drm, ptr %109, i32 0, i32 2, i32 3
  %118 = zext i32 %110 to i64
  tail call void @nvif_object_wr(ptr noundef %117, i32 noundef 4, i64 noundef %118, i32 noundef %108) #4
  br label %119

119:                                              ; preds = %116, %114
  %120 = load i32, ptr %77, align 4
  %121 = load ptr, ptr %7, align 4
  %122 = select i1 %85, i32 6817816, i32 6826008
  %123 = getelementptr inbounds %struct.nouveau_drm, ptr %121, i32 0, i32 2, i32 3, i32 0, i32 6
  %124 = load ptr, ptr %123, align 8
  %125 = icmp eq ptr %124, null
  br i1 %125, label %128, label %126, !prof !8

126:                                              ; preds = %119
  %127 = getelementptr i8, ptr %124, i32 %122
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 %120) #4, !srcloc !10
  br label %131

128:                                              ; preds = %119
  %129 = getelementptr inbounds %struct.nouveau_drm, ptr %121, i32 0, i32 2, i32 3
  %130 = zext i32 %122 to i64
  tail call void @nvif_object_wr(ptr noundef %129, i32 noundef 4, i64 noundef %130, i32 noundef %120) #4
  br label %131

131:                                              ; preds = %128, %126
  %132 = load i32, ptr %83, align 4
  %133 = load ptr, ptr %7, align 4
  %134 = select i1 %85, i32 6817924, i32 6826116
  %135 = getelementptr inbounds %struct.nouveau_drm, ptr %133, i32 0, i32 2, i32 3, i32 0, i32 6
  %136 = load ptr, ptr %135, align 8
  %137 = icmp eq ptr %136, null
  br i1 %137, label %140, label %138, !prof !8

138:                                              ; preds = %131
  %139 = getelementptr i8, ptr %136, i32 %134
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %132) #4, !srcloc !10
  br label %143

140:                                              ; preds = %131
  %141 = getelementptr inbounds %struct.nouveau_drm, ptr %133, i32 0, i32 2, i32 3
  %142 = zext i32 %134 to i64
  tail call void @nvif_object_wr(ptr noundef %141, i32 noundef 4, i64 noundef %142, i32 noundef %132) #4
  br label %143

143:                                              ; preds = %140, %138
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_rd(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_wr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2150885581}
!10 = !{i64 3344488}
!11 = !{i64 3344906}
!12 = !{i64 2150884359}
!13 = !{!"auto-init"}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2148025245, i64 2148025525, i64 2148025859, i64 2148026193}
