; ModuleID = '/llk/IR/drivers/gpu/drm/sun4i/sun8i_mixer.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun8i_mixer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.de2_fmt_info = type { i32, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.sun8i_mixer_cfg = type { i32, i32, i32, i32, i32, i8, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.component_ops = type { ptr, ptr }
%struct.sunxi_engine_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.of_endpoint = type { i32, i32, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.71, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.74, ptr, i32, ptr, i8, i32 }
%struct.anon.71 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.74 = type { i32, ptr }
%struct.sunxi_engine = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.sun8i_mixer = type { %struct.sunxi_engine, ptr, ptr, ptr, ptr }

@de2_formats = internal unnamed_addr constant [48 x %struct.de2_fmt_info] [%struct.de2_fmt_info { i32 875713089, i32 0 }, %struct.de2_fmt_info { i32 875708993, i32 1 }, %struct.de2_fmt_info { i32 875708754, i32 2 }, %struct.de2_fmt_info { i32 875708738, i32 3 }, %struct.de2_fmt_info { i32 875713112, i32 4 }, %struct.de2_fmt_info { i32 875709016, i32 5 }, %struct.de2_fmt_info { i32 875714642, i32 6 }, %struct.de2_fmt_info { i32 875714626, i32 7 }, %struct.de2_fmt_info { i32 875710290, i32 8 }, %struct.de2_fmt_info { i32 875710274, i32 9 }, %struct.de2_fmt_info { i32 909199186, i32 10 }, %struct.de2_fmt_info { i32 909199170, i32 11 }, %struct.de2_fmt_info { i32 842093121, i32 12 }, %struct.de2_fmt_info { i32 842093144, i32 12 }, %struct.de2_fmt_info { i32 842089025, i32 13 }, %struct.de2_fmt_info { i32 842089048, i32 13 }, %struct.de2_fmt_info { i32 842088786, i32 14 }, %struct.de2_fmt_info { i32 842094674, i32 14 }, %struct.de2_fmt_info { i32 842088770, i32 15 }, %struct.de2_fmt_info { i32 842094658, i32 15 }, %struct.de2_fmt_info { i32 892424769, i32 16 }, %struct.de2_fmt_info { i32 892424792, i32 16 }, %struct.de2_fmt_info { i32 892420673, i32 17 }, %struct.de2_fmt_info { i32 892420696, i32 17 }, %struct.de2_fmt_info { i32 892420434, i32 18 }, %struct.de2_fmt_info { i32 892426322, i32 18 }, %struct.de2_fmt_info { i32 892420418, i32 19 }, %struct.de2_fmt_info { i32 892426306, i32 19 }, %struct.de2_fmt_info { i32 808669761, i32 20 }, %struct.de2_fmt_info { i32 808665665, i32 21 }, %struct.de2_fmt_info { i32 808665426, i32 22 }, %struct.de2_fmt_info { i32 808665410, i32 23 }, %struct.de2_fmt_info { i32 1498831189, i32 1 }, %struct.de2_fmt_info { i32 1498765654, i32 3 }, %struct.de2_fmt_info { i32 1448695129, i32 0 }, %struct.de2_fmt_info { i32 1431918169, i32 2 }, %struct.de2_fmt_info { i32 909203022, i32 4 }, %struct.de2_fmt_info { i32 825644622, i32 5 }, %struct.de2_fmt_info { i32 842094158, i32 8 }, %struct.de2_fmt_info { i32 825382478, i32 9 }, %struct.de2_fmt_info { i32 909202777, i32 6 }, %struct.de2_fmt_info { i32 842093913, i32 10 }, %struct.de2_fmt_info { i32 825316697, i32 14 }, %struct.de2_fmt_info { i32 909203033, i32 6 }, %struct.de2_fmt_info { i32 842094169, i32 10 }, %struct.de2_fmt_info { i32 825316953, i32 14 }, %struct.de2_fmt_info { i32 808530000, i32 16 }, %struct.de2_fmt_info { i32 808530512, i32 18 }], align 4
@sun8i_mixer_of_table = internal constant [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a83t-de2-mixer-0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a83t_mixer0_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a83t-de2-mixer-1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a83t_mixer1_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-de2-mixer-0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_h3_mixer0_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-r40-de2-mixer-0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_r40_mixer0_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-r40-de2-mixer-1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_r40_mixer1_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-v3s-de2-mixer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_v3s_mixer_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a64-de2-mixer-0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a64_mixer0_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a64-de2-mixer-1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a64_mixer1_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h6-de3-mixer-0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_h6_mixer0_cfg }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author276 = internal constant [39 x i8] c"author=Icenowy Zheng <icenowy@aosc.io>\00", section ".modinfo", align 1
@__UNIQUE_ID_description277 = internal constant [39 x i8] c"description=Allwinner DE2 Mixer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license278 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@sun8i_a83t_mixer0_cfg = internal constant %struct.sun8i_mixer_cfg { i32 1, i32 3, i32 15, i32 0, i32 0, i8 0, i32 2048 }, align 4
@sun8i_a83t_mixer1_cfg = internal constant %struct.sun8i_mixer_cfg { i32 1, i32 1, i32 3, i32 1, i32 0, i8 0, i32 2048 }, align 4
@sun8i_h3_mixer0_cfg = internal constant %struct.sun8i_mixer_cfg { i32 1, i32 3, i32 15, i32 0, i32 432000000, i8 0, i32 2048 }, align 4
@sun8i_r40_mixer0_cfg = internal constant %struct.sun8i_mixer_cfg { i32 1, i32 3, i32 15, i32 0, i32 297000000, i8 0, i32 2048 }, align 4
@sun8i_r40_mixer1_cfg = internal constant %struct.sun8i_mixer_cfg { i32 1, i32 1, i32 3, i32 1, i32 297000000, i8 0, i32 2048 }, align 4
@sun8i_v3s_mixer_cfg = internal constant %struct.sun8i_mixer_cfg { i32 2, i32 1, i32 3, i32 0, i32 150000000, i8 0, i32 2048 }, align 4
@sun50i_a64_mixer0_cfg = internal constant %struct.sun8i_mixer_cfg { i32 1, i32 3, i32 15, i32 0, i32 297000000, i8 0, i32 4096 }, align 4
@sun50i_a64_mixer1_cfg = internal constant %struct.sun8i_mixer_cfg { i32 1, i32 1, i32 3, i32 1, i32 297000000, i8 0, i32 2048 }, align 4
@sun50i_h6_mixer0_cfg = internal constant %struct.sun8i_mixer_cfg { i32 1, i32 3, i32 15, i32 0, i32 600000000, i8 1, i32 4096 }, align 4
@sun8i_mixer_platform_driver = internal global %struct.platform_driver { ptr @sun8i_mixer_probe, ptr @sun8i_mixer_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun8i_mixer_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [12 x i8] c"sun8i-mixer\00", align 1
@sun8i_mixer_ops = internal constant %struct.component_ops { ptr @sun8i_mixer_bind, ptr @sun8i_mixer_unbind }, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Cannot do 32-bit DMA.\0A\00", align 1
@sun8i_engine_ops = internal constant %struct.sunxi_engine_ops { ptr null, ptr null, ptr @sun8i_mixer_commit, ptr @sun8i_layers_init, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"iommus\00", align 1
@sun8i_mixer_regmap_config = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 1048572, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Couldn't create the mixer regmap\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Couldn't get our reset line\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Couldn't deassert our reset line\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Couldn't get the mixer bus clock\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Couldn't get the mixer module clock\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Committing changes\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Couldn't initialize overlay plane\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Couldn't initialize %s plane\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"overlay\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author276, ptr @__UNIQUE_ID_description277, ptr @__UNIQUE_ID_license278], section "llvm.metadata"

@__mod_of__sun8i_mixer_of_table_device_table = dso_local alias [10 x %struct.of_device_id], ptr @sun8i_mixer_of_table

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync)
define dso_local i32 @sun8i_mixer_drm_format_to_hw(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %11, %2
  %4 = phi i32 [ 0, %2 ], [ %12, %11 ]
  %5 = getelementptr [48 x %struct.de2_fmt_info], ptr @de2_formats, i32 0, i32 %4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, %0
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = getelementptr [48 x %struct.de2_fmt_info], ptr @de2_formats, i32 0, i32 %4, i32 1
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %1, align 4
  br label %14

11:                                               ; preds = %3
  %12 = add nuw nsw i32 %4, 1
  %13 = icmp eq i32 %12, 48
  br i1 %13, label %14, label %3

14:                                               ; preds = %11, %8
  %15 = phi i32 [ 0, %8 ], [ -22, %11 ]
  ret i32 %15
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun8i_mixer_platform_driver, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #2 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun8i_mixer_platform_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun8i_mixer_probe(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 @component_add(ptr noundef %2, ptr noundef nonnull @sun8i_mixer_ops) #8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun8i_mixer_remove(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_del(ptr noundef %2, ptr noundef nonnull @sun8i_mixer_ops) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun8i_mixer_bind(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #4 {
  %4 = alloca %struct.of_endpoint, align 4
  %5 = getelementptr i8, ptr %0, i32 -16
  %6 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @dma_set_mask(ptr noundef %0, i64 noundef 4294967295) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1) #9
  br label %188

11:                                               ; preds = %3
  %12 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 40, i32 noundef 3520) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %188, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %12, ptr %15, align 8
  store ptr @sun8i_engine_ops, ptr %12, align 4
  %16 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.sunxi_engine, ptr %12, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  %19 = tail call ptr @of_find_property(ptr noundef %17, ptr noundef nonnull @.str.2, ptr noundef null) #8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %16, align 8
  %25 = tail call i32 @of_dma_configure_id(ptr noundef %23, ptr noundef %24, i1 noundef zeroext true, ptr noundef null) #8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %188

27:                                               ; preds = %21, %14
  %28 = load ptr, ptr %16, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false) #8, !annotation !8
  %29 = tail call ptr @of_graph_get_endpoint_by_regs(ptr noundef %28, i32 noundef 1, i32 noundef -1) #8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = tail call ptr @of_graph_get_remote_endpoint(ptr noundef nonnull %29) #8
  tail call void @of_node_put(ptr noundef nonnull %29) #8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = call i32 @of_graph_parse_endpoint(ptr noundef nonnull %32, ptr noundef nonnull %4) #8
  call void @of_node_put(ptr noundef nonnull %32) #8
  %36 = getelementptr inbounds %struct.of_endpoint, ptr %4, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  br label %38

38:                                               ; preds = %34, %31, %27
  %39 = phi i32 [ %37, %34 ], [ -22, %27 ], [ -22, %31 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #8
  %40 = getelementptr inbounds %struct.sunxi_engine, ptr %12, i32 0, i32 3
  store i32 %39, ptr %40, align 4
  %41 = call ptr @of_device_get_match_data(ptr noundef %0) #8
  %42 = getelementptr inbounds %struct.sun8i_mixer, ptr %12, i32 0, i32 1
  store ptr %41, ptr %42, align 4
  %43 = icmp eq ptr %41, null
  br i1 %43, label %188, label %44

44:                                               ; preds = %38
  %45 = call ptr @devm_platform_ioremap_resource(ptr noundef %5, i32 noundef 0) #8
  %46 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = ptrtoint ptr %45 to i32
  br label %188

49:                                               ; preds = %44
  %50 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %0, ptr noundef null, ptr noundef %45, ptr noundef nonnull @sun8i_mixer_regmap_config, ptr noundef null, ptr noundef null) #8
  %51 = getelementptr inbounds %struct.sunxi_engine, ptr %12, i32 0, i32 2
  store ptr %50, ptr %51, align 4
  %52 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.3) #9
  %54 = load ptr, ptr %51, align 4
  %55 = ptrtoint ptr %54 to i32
  br label %188

56:                                               ; preds = %49
  %57 = call ptr @__devm_reset_control_get(ptr noundef %0, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %58 = getelementptr inbounds %struct.sun8i_mixer, ptr %12, i32 0, i32 2
  store ptr %57, ptr %58, align 4
  %59 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.4) #9
  %61 = load ptr, ptr %58, align 4
  %62 = ptrtoint ptr %61 to i32
  br label %188

63:                                               ; preds = %56
  %64 = call i32 @reset_control_deassert(ptr noundef %57) #8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.5) #9
  br label %188

67:                                               ; preds = %63
  %68 = call ptr @devm_clk_get(ptr noundef %0, ptr noundef nonnull @.str.6) #8
  %69 = getelementptr inbounds %struct.sun8i_mixer, ptr %12, i32 0, i32 3
  store ptr %68, ptr %69, align 4
  %70 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.7) #9
  %72 = load ptr, ptr %69, align 4
  br label %183

73:                                               ; preds = %67
  %74 = call i32 @clk_prepare(ptr noundef %68) #8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = call i32 @clk_enable(ptr noundef %68) #8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  call void @clk_unprepare(ptr noundef %68) #8
  br label %80

80:                                               ; preds = %79, %76, %73
  %81 = call ptr @devm_clk_get(ptr noundef %0, ptr noundef nonnull @.str.8) #8
  %82 = getelementptr inbounds %struct.sun8i_mixer, ptr %12, i32 0, i32 4
  store ptr %81, ptr %82, align 4
  %83 = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.9) #9
  %85 = load ptr, ptr %82, align 4
  %86 = load ptr, ptr %69, align 4
  call void @clk_disable(ptr noundef %86) #8
  call void @clk_unprepare(ptr noundef %86) #8
  br label %183

87:                                               ; preds = %80
  %88 = load ptr, ptr %42, align 4
  %89 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %88, i32 0, i32 4
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %87
  %93 = call i32 @clk_set_rate(ptr noundef %81, i32 noundef %90) #8
  %94 = load ptr, ptr %82, align 4
  br label %95

95:                                               ; preds = %92, %87
  %96 = phi ptr [ %94, %92 ], [ %81, %87 ]
  %97 = call i32 @clk_prepare(ptr noundef %96) #8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = call i32 @clk_enable(ptr noundef %96) #8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %99
  call void @clk_unprepare(ptr noundef %96) #8
  br label %103

103:                                              ; preds = %102, %99, %95
  %104 = getelementptr inbounds %struct.sunxi_engine, ptr %12, i32 0, i32 4
  %105 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  store ptr %104, ptr %105, align 4
  store ptr %7, ptr %104, align 4
  %107 = getelementptr inbounds %struct.sunxi_engine, ptr %12, i32 0, i32 4, i32 1
  store ptr %106, ptr %107, align 4
  store volatile ptr %104, ptr %106, align 4
  %108 = load ptr, ptr %42, align 4
  %109 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %108, i32 0, i32 5
  %110 = load i8, ptr %109, align 4
  %111 = and i8 %110, 1
  %112 = icmp eq i8 %111, 0
  %113 = select i1 %112, i32 4096, i32 2048
  br i1 %112, label %127, label %114

114:                                              ; preds = %114, %103
  %115 = phi i32 [ %118, %114 ], [ 0, %103 ]
  %116 = load ptr, ptr %51, align 4
  %117 = call i32 @regmap_write(ptr noundef %116, i32 noundef %115, i32 noundef 0) #8
  %118 = add nuw nsw i32 %115, 4
  %119 = icmp ult i32 %115, 12284
  br i1 %119, label %114, label %120

120:                                              ; preds = %114
  %121 = load ptr, ptr %51, align 4
  %122 = call i32 @regmap_write(ptr noundef %121, i32 noundef 458752, i32 noundef 0) #8
  %123 = load ptr, ptr %51, align 4
  %124 = call i32 @regmap_write(ptr noundef %123, i32 noundef 460800, i32 noundef 0) #8
  %125 = load ptr, ptr %51, align 4
  %126 = call i32 @regmap_write(ptr noundef %125, i32 noundef 462848, i32 noundef 0) #8
  br label %133

127:                                              ; preds = %127, %103
  %128 = phi i32 [ %131, %127 ], [ 0, %103 ]
  %129 = load ptr, ptr %51, align 4
  %130 = call i32 @regmap_write(ptr noundef %129, i32 noundef %128, i32 noundef 0) #8
  %131 = add nuw nsw i32 %128, 4
  %132 = icmp ult i32 %128, 24572
  br i1 %132, label %127, label %133

133:                                              ; preds = %127, %120
  %134 = phi i32 [ 464896, %120 ], [ 655360, %127 ]
  %135 = phi i32 [ 466944, %120 ], [ 663552, %127 ]
  %136 = phi i32 [ 524288, %120 ], [ 671744, %127 ]
  %137 = phi i32 [ 655360, %120 ], [ 679936, %127 ]
  %138 = phi i32 [ 851968, %120 ], [ 696320, %127 ]
  %139 = phi i32 [ 884736, %120 ], [ 720896, %127 ]
  %140 = load ptr, ptr %51, align 4
  %141 = call i32 @regmap_write(ptr noundef %140, i32 noundef %134, i32 noundef 0) #8
  %142 = load ptr, ptr %51, align 4
  %143 = call i32 @regmap_write(ptr noundef %142, i32 noundef %135, i32 noundef 0) #8
  %144 = load ptr, ptr %51, align 4
  %145 = call i32 @regmap_write(ptr noundef %144, i32 noundef %136, i32 noundef 0) #8
  %146 = load ptr, ptr %51, align 4
  %147 = call i32 @regmap_write(ptr noundef %146, i32 noundef %137, i32 noundef 0) #8
  %148 = load ptr, ptr %51, align 4
  %149 = call i32 @regmap_write(ptr noundef %148, i32 noundef 688128, i32 noundef 0) #8
  %150 = load ptr, ptr %51, align 4
  %151 = call i32 @regmap_write(ptr noundef %150, i32 noundef %138, i32 noundef 0) #8
  %152 = load ptr, ptr %51, align 4
  %153 = call i32 @regmap_write(ptr noundef %152, i32 noundef %139, i32 noundef 0) #8
  %154 = load ptr, ptr %51, align 4
  %155 = call i32 @regmap_write(ptr noundef %154, i32 noundef 0, i32 noundef 1) #8
  %156 = load ptr, ptr %51, align 4
  %157 = or i32 %113, 136
  %158 = call i32 @regmap_write(ptr noundef %156, i32 noundef %157, i32 noundef -16777216) #8
  %159 = load ptr, ptr %51, align 4
  %160 = call i32 @regmap_write(ptr noundef %159, i32 noundef %113, i32 noundef 1) #8
  %161 = load ptr, ptr %51, align 4
  %162 = or i32 %113, 4
  %163 = call i32 @regmap_write(ptr noundef %161, i32 noundef %162, i32 noundef -16777216) #8
  %164 = load ptr, ptr %42, align 4
  %165 = load i32, ptr %164, align 4
  %166 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %164, i32 0, i32 1
  %167 = load i32, ptr %166, align 4
  %168 = add i32 %167, %165
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %180

170:                                              ; preds = %133
  %171 = or i32 %113, 144
  br label %172

172:                                              ; preds = %172, %170
  %173 = phi i32 [ 0, %170 ], [ %178, %172 ]
  %174 = load ptr, ptr %51, align 4
  %175 = shl i32 %173, 2
  %176 = add i32 %171, %175
  %177 = call i32 @regmap_write(ptr noundef %174, i32 noundef %176, i32 noundef 50397953) #8
  %178 = add nuw nsw i32 %173, 1
  %179 = icmp eq i32 %178, %168
  br i1 %179, label %180, label %172

180:                                              ; preds = %172, %133
  %181 = load ptr, ptr %51, align 4
  %182 = call i32 @regmap_update_bits_base(ptr noundef %181, i32 noundef %113, i32 noundef 7936, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %188

183:                                              ; preds = %84, %71
  %184 = phi ptr [ %72, %71 ], [ %85, %84 ]
  %185 = ptrtoint ptr %184 to i32
  %186 = load ptr, ptr %58, align 4
  %187 = call i32 @reset_control_assert(ptr noundef %186) #8
  br label %188

188:                                              ; preds = %183, %180, %66, %60, %53, %47, %38, %21, %11, %10
  %189 = phi i32 [ %8, %10 ], [ %48, %47 ], [ %55, %53 ], [ %62, %60 ], [ %64, %66 ], [ %185, %183 ], [ 0, %180 ], [ -12, %11 ], [ %25, %21 ], [ -22, %38 ]
  ret i32 %189
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun8i_mixer_unbind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #4 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sunxi_engine, ptr %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.sunxi_engine, ptr %5, i32 0, i32 4, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  %11 = getelementptr inbounds %struct.sun8i_mixer, ptr %5, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  tail call void @clk_disable(ptr noundef %12) #8
  tail call void @clk_unprepare(ptr noundef %12) #8
  %13 = getelementptr inbounds %struct.sun8i_mixer, ptr %5, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  tail call void @clk_disable(ptr noundef %14) #8
  tail call void @clk_unprepare(ptr noundef %14) #8
  %15 = getelementptr inbounds %struct.sun8i_mixer, ptr %5, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @reset_control_assert(ptr noundef %16) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun8i_mixer_commit(ptr nocapture noundef readonly %0) #4 {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.10) #8
  %2 = getelementptr inbounds %struct.sunxi_engine, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 8, i32 noundef 1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @sun8i_layers_init(ptr noundef %0, ptr noundef %1) #4 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %4 = getelementptr inbounds %struct.sun8i_mixer, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %5, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %6, 1
  %10 = add i32 %9, %8
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 4) #8
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %56, label %13, !prof !9

13:                                               ; preds = %2
  %14 = load ptr, ptr %3, align 4
  %15 = extractvalue { i32, i1 } %11, 0
  %16 = tail call noalias ptr @devm_kmalloc(ptr noundef %14, i32 noundef %15, i32 noundef 3520) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %56, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr %4, align 4
  %20 = load i32, ptr %19, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %33, %18
  %23 = phi ptr [ %19, %18 ], [ %36, %33 ]
  %24 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %23, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %39, label %56

27:                                               ; preds = %33, %18
  %28 = phi i32 [ %35, %33 ], [ 0, %18 ]
  %29 = tail call ptr @sun8i_vi_layer_init_one(ptr noundef %0, ptr noundef %1, i32 noundef %28) #8
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.11) #9
  br label %56

33:                                               ; preds = %27
  %34 = getelementptr ptr, ptr %16, i32 %28
  store ptr %29, ptr %34, align 4
  %35 = add nuw nsw i32 %28, 1
  %36 = load ptr, ptr %4, align 4
  %37 = load i32, ptr %36, align 4
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %27, label %22

39:                                               ; preds = %47, %22
  %40 = phi i32 [ %52, %47 ], [ 0, %22 ]
  %41 = tail call ptr @sun8i_ui_layer_init_one(ptr noundef %0, ptr noundef %1, i32 noundef %40) #8
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load ptr, ptr %3, align 4
  %45 = icmp eq i32 %40, 0
  %46 = select i1 %45, ptr @.str.14, ptr @.str.13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.12, ptr noundef nonnull %46) #9
  br label %56

47:                                               ; preds = %39
  %48 = load ptr, ptr %4, align 4
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, %40
  %51 = getelementptr ptr, ptr %16, i32 %50
  store ptr %41, ptr %51, align 4
  %52 = add nuw nsw i32 %40, 1
  %53 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %48, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %39, label %56

56:                                               ; preds = %47, %43, %31, %22, %13, %2
  %57 = phi ptr [ inttoptr (i32 -12 to ptr), %13 ], [ %29, %31 ], [ %41, %43 ], [ inttoptr (i32 -12 to ptr), %2 ], [ %16, %22 ], [ %16, %47 ]
  ret ptr %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sun8i_vi_layer_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sun8i_ui_layer_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_configure_id(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_endpoint_by_regs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_endpoint(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_graph_parse_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
