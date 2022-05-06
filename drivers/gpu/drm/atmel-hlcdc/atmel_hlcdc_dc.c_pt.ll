; ModuleID = '/llk/IR/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c_pt.bc'
source_filename = "../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atmel_hlcdc_dc_desc = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, i32 }
%struct.atmel_hlcdc_layer_desc = type { ptr, i32, i32, i32, i32, i32, ptr, %struct.atmel_hlcdc_layer_cfg_layout, i32, i32 }
%struct.atmel_hlcdc_layer_cfg_layout = type { [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon, i32, i32, i32 }
%struct.anon = type { i32, i32 }
%struct.atmel_hlcdc_formats = type { i32, ptr }
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
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
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.66, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.77, ptr, i32, ptr, i8, i32 }
%struct.anon.66 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.anon.77 = type { i32, ptr }
%struct.atmel_hlcdc_dc = type { ptr, ptr, ptr, ptr, [6 x ptr], %struct.anon.78 }
%struct.anon.78 = type { i32, ptr }
%struct.atmel_hlcdc = type { ptr, ptr, ptr, ptr, i32 }

@atmel_hlcdc_of_match = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9n12-hlcdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_hlcdc_dc_at91sam9n12 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-hlcdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_hlcdc_dc_at91sam9x5 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-hlcdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_hlcdc_dc_sama5d4 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d3-hlcdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_hlcdc_dc_sama5d3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d4-hlcdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_hlcdc_dc_sama5d4 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-hlcdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_hlcdc_dc_sam9x60 }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author277 = internal constant [54 x i8] c"author=Jean-Jacques Hiblot <jjhiblot@traphandler.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author278 = internal constant [60 x i8] c"author=Boris Brezillon <boris.brezillon@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description279 = internal constant [54 x i8] c"description=Atmel HLCDC Display Controller DRM Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license280 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias281 = internal constant [30 x i8] c"alias=platform:atmel-hlcdc-dc\00", section ".modinfo", align 1
@atmel_hlcdc_dc_at91sam9n12 = internal constant %struct.atmel_hlcdc_dc_desc { i32 0, i32 0, i32 1280, i32 860, i32 63, i32 63, i32 255, i8 1, i8 0, ptr @atmel_hlcdc_at91sam9n12_layers, i32 1 }, align 4
@atmel_hlcdc_dc_at91sam9x5 = internal constant %struct.atmel_hlcdc_dc_desc { i32 0, i32 0, i32 800, i32 600, i32 63, i32 63, i32 255, i8 1, i8 0, ptr @atmel_hlcdc_at91sam9x5_layers, i32 4 }, align 4
@atmel_hlcdc_dc_sama5d4 = internal constant %struct.atmel_hlcdc_dc_desc { i32 0, i32 0, i32 2048, i32 2048, i32 255, i32 255, i32 1023, i8 0, i8 0, ptr @atmel_hlcdc_sama5d4_layers, i32 4 }, align 4
@atmel_hlcdc_dc_sama5d3 = internal constant %struct.atmel_hlcdc_dc_desc { i32 0, i32 0, i32 2048, i32 2048, i32 63, i32 63, i32 511, i8 1, i8 0, ptr @atmel_hlcdc_sama5d3_layers, i32 5 }, align 4
@atmel_hlcdc_dc_sam9x60 = internal constant %struct.atmel_hlcdc_dc_desc { i32 0, i32 0, i32 2048, i32 2048, i32 255, i32 255, i32 1023, i8 0, i8 1, ptr @atmel_hlcdc_sam9x60_layers, i32 4 }, align 4
@atmel_hlcdc_at91sam9n12_layers = internal constant [1 x %struct.atmel_hlcdc_layer_desc] [%struct.atmel_hlcdc_layer_desc { ptr @.str, i32 1, i32 0, i32 64, i32 44, i32 1024, ptr @atmel_hlcdc_plane_rgb_formats, %struct.atmel_hlcdc_layer_cfg_layout { [3 x i32] [i32 2, i32 0, i32 0], [3 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 4, i32 0, %struct.anon zeroinitializer, i32 0, i32 0, i32 0 }, i32 0, i32 0 }], align 4
@.str = private unnamed_addr constant [5 x i8] c"base\00", align 1
@atmel_hlcdc_plane_rgb_formats = external dso_local global %struct.atmel_hlcdc_formats, align 4
@atmel_hlcdc_at91sam9x5_layers = internal constant [4 x %struct.atmel_hlcdc_layer_desc] [%struct.atmel_hlcdc_layer_desc { ptr @.str, i32 1, i32 0, i32 64, i32 44, i32 1024, ptr @atmel_hlcdc_plane_rgb_formats, %struct.atmel_hlcdc_layer_cfg_layout { [3 x i32] [i32 2, i32 0, i32 0], [3 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 4, i32 0, %struct.anon zeroinitializer, i32 5, i32 6, i32 0 }, i32 0, i32 0 }, %struct.atmel_hlcdc_layer_desc { ptr @.str.1, i32 2, i32 1, i32 256, i32 44, i32 2048, ptr @atmel_hlcdc_plane_rgb_formats, %struct.atmel_hlcdc_layer_cfg_layout { [3 x i32] [i32 4, i32 0, i32 0], [3 x i32] [i32 5, i32 0, i32 0], i32 2, i32 3, i32 0, i32 6, i32 7, i32 8, i32 9, i32 0, %struct.anon zeroinitializer, i32 0, i32 0, i32 0 }, i32 0, i32 0 }, %struct.atmel_hlcdc_layer_desc { ptr @.str.2, i32 2, i32 2, i32 640, i32 76, i32 4096, ptr @atmel_hlcdc_plane_rgb_and_yuv_formats, %struct.atmel_hlcdc_layer_cfg_layout { [3 x i32] [i32 5, i32 7, i32 0], [3 x i32] [i32 6, i32 8, i32 0], i32 2, i32 3, i32 4, i32 9, i32 10, i32 11, i32 12, i32 13, %struct.anon zeroinitializer, i32 0, i32 0, i32 14 }, i32 0, i32 0 }, %struct.atmel_hlcdc_layer_desc { ptr @.str.3, i32 3, i32 3, i32 832, i32 44, i32 5120, ptr @atmel_hlcdc_plane_rgb_formats, %struct.atmel_hlcdc_layer_cfg_layout { [3 x i32] [i32 4, i32 0, i32 0], [3 x i32] zeroinitializer, i32 2, i32 3, i32 0, i32 6, i32 7, i32 8, i32 9, i32 0, %struct.anon zeroinitializer, i32 0, i32 0, i32 0 }, i32 128, i32 128 }], align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"overlay1\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"high-end-overlay\00", align 1
@atmel_hlcdc_plane_rgb_and_yuv_formats = external dso_local global %struct.atmel_hlcdc_formats, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"cursor\00", align 1
@atmel_hlcdc_sama5d4_layers = internal constant [4 x %struct.atmel_hlcdc_layer_desc] [%struct.atmel_hlcdc_layer_desc { ptr @.str, i32 1, i32 0, i32 64, i32 44, i32 1536, ptr @atmel_hlcdc_plane_rgb_formats, %struct.atmel_hlcdc_layer_cfg_layout { [3 x i32] [i32 2, i32 0, i32 0], [3 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 4, i32 0, %struct.anon zeroinitializer, i32 5, i32 6, i32 0 }, i32 0, i32 0 }, %struct.atmel_hlcdc_layer_desc { ptr @.str.1, i32 2, i32 1, i32 320, i32 44, i32 2560, ptr @atmel_hlcdc_plane_rgb_formats, %struct.atmel_hlcdc_layer_cfg_layout { [3 x i32] [i32 4, i32 0, i32 0], [3 x i32] [i32 5, i32 0, i32 0], i32 2, i32 3, i32 0, i32 6, i32 7, i32 8, i32 9, i32 0, %struct.anon zeroinitializer, i32 0, i32 0, i32 0 }, i32 0, i32 0 }, %struct.atmel_hlcdc_layer_desc { ptr @.str.4, i32 2, i32 2, i32 576, i32 44, i32 3584, ptr @atmel_hlcdc_plane_rgb_formats, %struct.atmel_hlcdc_layer_cfg_layout { [3 x i32] [i32 4, i32 0, i32 0], [3 x i32] [i32 5, i32 0, i32 0], i32 2, i32 3, i32 0, i32 6, i32 7, i32 8, i32 9, i32 0, %struct.anon zeroinitializer, i32 0, i32 0, i32 0 }, i32 0, i32 0 }, %struct.atmel_hlcdc_layer_desc { ptr @.str.2, i32 2, i32 3, i32 832, i32 76, i32 4608, ptr @atmel_hlcdc_plane_rgb_and_yuv_formats, %struct.atmel_hlcdc_layer_cfg_layout { [3 x i32] [i32 5, i32 7, i32 0], [3 x i32] [i32 6, i32 8, i32 0], i32 2, i32 3, i32 4, i32 9, i32 10, i32 11, i32 12, i32 13, %struct.anon { i32 17, i32 33 }, i32 0, i32 0, i32 14 }, i32 0, i32 0 }], align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"overlay2\00", align 1
@atmel_hlcdc_sama5d3_layers = internal constant [5 x %struct.atmel_hlcdc_layer_desc] [%struct.atmel_hlcdc_layer_desc { ptr @.str, i32 1, i32 0, i32 64, i32 44, i32 1536, ptr @atmel_hlcdc_plane_rgb_formats, %struct.atmel_hlcdc_layer_cfg_layout { [3 x i32] [i32 2, i32 0, i32 0], [3 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 4, i32 0, %struct.anon zeroinitializer, i32 5, i32 6, i32 0 }, i32 0, i32 0 }, %struct.atmel_hlcdc_layer_desc { ptr @.str.1, i32 2, i32 1, i32 320, i32 44, i32 2560, ptr @atmel_hlcdc_plane_rgb_formats, %struct.atmel_hlcdc_layer_cfg_layout { [3 x i32] [i32 4, i32 0, i32 0], [3 x i32] [i32 5, i32 0, i32 0], i32 2, i32 3, i32 0, i32 6, i32 7, i32 8, i32 9, i32 0, %struct.anon zeroinitializer, i32 0, i32 0, i32 0 }, i32 0, i32 0 }, %struct.atmel_hlcdc_layer_desc { ptr @.str.4, i32 2, i32 2, i32 576, i32 44, i32 3584, ptr @atmel_hlcdc_plane_rgb_formats, %struct.atmel_hlcdc_layer_cfg_layout { [3 x i32] [i32 4, i32 0, i32 0], [3 x i32] [i32 5, i32 0, i32 0], i32 2, i32 3, i32 0, i32 6, i32 7, i32 8, i32 9, i32 0, %struct.anon zeroinitializer, i32 0, i32 0, i32 0 }, i32 0, i32 0 }, %struct.atmel_hlcdc_layer_desc { ptr @.str.2, i32 2, i32 3, i32 832, i32 76, i32 4608, ptr @atmel_hlcdc_plane_rgb_and_yuv_formats, %struct.atmel_hlcdc_layer_cfg_layout { [3 x i32] [i32 5, i32 7, i32 0], [3 x i32] [i32 6, i32 8, i32 0], i32 2, i32 3, i32 4, i32 9, i32 10, i32 11, i32 12, i32 13, %struct.anon { i32 17, i32 33 }, i32 0, i32 0, i32 14 }, i32 0, i32 0 }, %struct.atmel_hlcdc_layer_desc { ptr @.str.3, i32 3, i32 4, i32 1088, i32 44, i32 5632, ptr @atmel_hlcdc_plane_rgb_formats, %struct.atmel_hlcdc_layer_cfg_layout { [3 x i32] [i32 4, i32 0, i32 0], [3 x i32] [i32 5, i32 0, i32 0], i32 2, i32 3, i32 0, i32 6, i32 7, i32 8, i32 9, i32 13, %struct.anon zeroinitializer, i32 0, i32 0, i32 0 }, i32 128, i32 128 }], align 4
@atmel_hlcdc_sam9x60_layers = internal constant [4 x %struct.atmel_hlcdc_layer_desc] [%struct.atmel_hlcdc_layer_desc { ptr @.str, i32 1, i32 0, i32 96, i32 44, i32 1536, ptr @atmel_hlcdc_plane_rgb_formats, %struct.atmel_hlcdc_layer_cfg_layout { [3 x i32] [i32 2, i32 0, i32 0], [3 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 4, i32 0, %struct.anon zeroinitializer, i32 5, i32 6, i32 0 }, i32 0, i32 0 }, %struct.atmel_hlcdc_layer_desc { ptr @.str.1, i32 2, i32 1, i32 352, i32 44, i32 2560, ptr @atmel_hlcdc_plane_rgb_formats, %struct.atmel_hlcdc_layer_cfg_layout { [3 x i32] [i32 4, i32 0, i32 0], [3 x i32] [i32 5, i32 0, i32 0], i32 2, i32 3, i32 0, i32 6, i32 7, i32 8, i32 9, i32 0, %struct.anon zeroinitializer, i32 0, i32 0, i32 0 }, i32 0, i32 0 }, %struct.atmel_hlcdc_layer_desc { ptr @.str.4, i32 2, i32 2, i32 608, i32 44, i32 3584, ptr @atmel_hlcdc_plane_rgb_formats, %struct.atmel_hlcdc_layer_cfg_layout { [3 x i32] [i32 4, i32 0, i32 0], [3 x i32] [i32 5, i32 0, i32 0], i32 2, i32 3, i32 0, i32 6, i32 7, i32 8, i32 9, i32 0, %struct.anon zeroinitializer, i32 0, i32 0, i32 0 }, i32 0, i32 0 }, %struct.atmel_hlcdc_layer_desc { ptr @.str.2, i32 2, i32 3, i32 864, i32 76, i32 4608, ptr @atmel_hlcdc_plane_rgb_and_yuv_formats, %struct.atmel_hlcdc_layer_cfg_layout { [3 x i32] [i32 5, i32 7, i32 0], [3 x i32] [i32 6, i32 8, i32 0], i32 2, i32 3, i32 4, i32 9, i32 10, i32 11, i32 12, i32 13, %struct.anon { i32 17, i32 33 }, i32 0, i32 0, i32 14 }, i32 0, i32 0 }], align 4
@atmel_hlcdc_dc_platform_driver = internal global %struct.platform_driver { ptr @atmel_hlcdc_dc_drm_probe, ptr @atmel_hlcdc_dc_drm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.5, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_hlcdc_dc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_hlcdc_dc_drm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.5 = private unnamed_addr constant [31 x i8] c"atmel-hlcdc-display-controller\00", align 1
@atmel_hlcdc_dc_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,hlcdc-display-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@atmel_hlcdc_dc_drm_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @atmel_hlcdc_dc_drm_suspend, ptr @atmel_hlcdc_dc_drm_resume, ptr @atmel_hlcdc_dc_drm_suspend, ptr @atmel_hlcdc_dc_drm_resume, ptr @atmel_hlcdc_dc_drm_suspend, ptr @atmel_hlcdc_dc_drm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@atmel_hlcdc_dc_driver = internal constant %struct.drm_driver { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @drm_gem_cma_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr @drm_gem_cma_dumb_create, ptr null, ptr null, i32 1, i32 0, i32 0, ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 19, ptr null, i32 0, ptr @fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"atmel-hlcdc\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Atmel HLCD Controller DRM\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"20141504\00", align 1
@fops = internal constant %struct.file_operations { ptr @__this_module, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"invalid compatible string\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"invalid hlcdc description\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"failed to enable periph_clk\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"failed to initialize vblank\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"failed to initialize mode setting\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"failed to install IRQ handler\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"failed to create HLCDC outputs: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"failed to create planes: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"failed to create crtc\0A\00", align 1
@mode_config_funcs = internal constant %struct.drm_mode_config_funcs { ptr @drm_gem_fb_create, ptr null, ptr null, ptr null, ptr @drm_atomic_helper_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_alias281, ptr @__UNIQUE_ID_author277, ptr @__UNIQUE_ID_author278, ptr @__UNIQUE_ID_description279, ptr @__UNIQUE_ID_license280], section "llvm.metadata"

@__mod_of__atmel_hlcdc_of_match_device_table = dso_local alias [7 x %struct.of_device_id], ptr @atmel_hlcdc_of_match

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @atmel_hlcdc_dc_mode_valid(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 7
  %4 = load i16, ptr %3, align 4
  %5 = zext i16 %4 to i32
  %6 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 6
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = sub nsw i32 %5, %8
  %10 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 9
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 8
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = sub nsw i32 %12, %15
  %17 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 2
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  %20 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 1
  %21 = load i16, ptr %20, align 4
  %22 = zext i16 %21 to i32
  %23 = sub nsw i32 %19, %22
  %24 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 4
  %25 = load i16, ptr %24, align 2
  %26 = zext i16 %25 to i32
  %27 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 3
  %28 = load i16, ptr %27, align 4
  %29 = zext i16 %28 to i32
  %30 = sub nsw i32 %26, %29
  %31 = sub nsw i32 %29, %19
  %32 = load ptr, ptr %0, align 4
  %33 = getelementptr inbounds %struct.atmel_hlcdc_dc_desc, ptr %32, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, 1
  %36 = icmp sgt i32 %31, %35
  %37 = icmp slt i32 %31, 1
  %38 = or i1 %37, %36
  br i1 %38, label %71, label %39

39:                                               ; preds = %2
  %40 = sub nsw i32 %15, %5
  %41 = icmp sgt i32 %40, %35
  %42 = icmp slt i32 %40, 1
  %43 = or i1 %42, %41
  br i1 %43, label %71, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.atmel_hlcdc_dc_desc, ptr %32, i32 0, i32 6
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, 1
  %48 = icmp sgt i32 %23, %47
  %49 = icmp slt i32 %23, 1
  %50 = or i1 %49, %48
  br i1 %50, label %71, label %51

51:                                               ; preds = %44
  %52 = icmp sgt i32 %30, %47
  %53 = icmp slt i32 %30, 1
  %54 = or i1 %53, %52
  %55 = icmp eq i16 %21, 0
  %56 = select i1 %54, i1 true, i1 %55
  br i1 %56, label %71, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.atmel_hlcdc_dc_desc, ptr %32, i32 0, i32 5
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, 1
  %61 = icmp sgt i32 %9, %60
  %62 = icmp slt i32 %9, 1
  %63 = or i1 %62, %61
  br i1 %63, label %71, label %64

64:                                               ; preds = %57
  %65 = icmp sgt i32 %16, %59
  %66 = icmp slt i32 %16, 0
  %67 = or i1 %66, %65
  %68 = icmp eq i16 %7, 0
  %69 = select i1 %67, i1 true, i1 %68
  %70 = select i1 %69, i32 4, i32 0
  br label %71

71:                                               ; preds = %64, %57, %51, %44, %39, %2
  %72 = phi i32 [ 1, %2 ], [ 2, %39 ], [ 3, %51 ], [ 3, %44 ], [ 4, %57 ], [ %70, %64 ]
  ret i32 %72
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @atmel_hlcdc_dc_platform_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #2 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @atmel_hlcdc_dc_platform_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_hlcdc_dc_drm_probe(ptr noundef %0) #4 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call ptr @drm_dev_alloc(ptr noundef nonnull @atmel_hlcdc_dc_driver, ptr noundef %3) #6
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = ptrtoint ptr %4 to i32
  br label %171

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 25
  %14 = load ptr, ptr %13, align 8
  %15 = tail call ptr @of_match_node(ptr noundef nonnull @atmel_hlcdc_of_match, ptr noundef %14) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.9) #7
  br label %169

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.of_device_id, ptr %15, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.10) #7
  br label %169

23:                                               ; preds = %18
  %24 = load ptr, ptr %9, align 4
  %25 = tail call noalias ptr @devm_kmalloc(ptr noundef %24, i32 noundef 48, i32 noundef 3520) #6
  %26 = icmp eq ptr %25, null
  br i1 %26, label %169, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %19, align 4
  store ptr %28, ptr %25, align 4
  %29 = load ptr, ptr %9, align 4
  %30 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 8
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %25, i32 0, i32 2
  store ptr %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  store ptr %25, ptr %35, align 4
  %36 = getelementptr inbounds %struct.atmel_hlcdc, ptr %33, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 @clk_prepare(ptr noundef %37) #6
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %27
  %41 = tail call i32 @clk_enable(ptr noundef %37) #6
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  tail call void @clk_unprepare(ptr noundef %37) #6
  br label %44

44:                                               ; preds = %43, %27
  %45 = phi i32 [ %41, %43 ], [ %38, %27 ]
  %46 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.11) #7
  br label %169

47:                                               ; preds = %40
  %48 = load ptr, ptr %9, align 4
  tail call void @pm_runtime_enable(ptr noundef %48) #6
  %49 = tail call i32 @drm_vblank_init(ptr noundef %4, i32 noundef 1) #6
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.12) #7
  br label %157

53:                                               ; preds = %47
  %54 = load ptr, ptr %35, align 4
  %55 = tail call i32 @drmm_mode_config_init(ptr noundef %4) #6
  %56 = tail call i32 @atmel_hlcdc_create_outputs(ptr noundef %4) #6
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.15, i32 noundef %56) #7
  br label %88

60:                                               ; preds = %53
  %61 = tail call i32 @atmel_hlcdc_create_planes(ptr noundef %4) #6
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.16, i32 noundef %61) #7
  br label %88

65:                                               ; preds = %60
  %66 = tail call i32 @atmel_hlcdc_crtc_create(ptr noundef %4) #6
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.17) #7
  br label %88

70:                                               ; preds = %65
  %71 = load ptr, ptr %54, align 4
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30, i32 23
  store i32 %72, ptr %73, align 4
  %74 = load ptr, ptr %54, align 4
  %75 = getelementptr inbounds %struct.atmel_hlcdc_dc_desc, ptr %74, i32 0, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30, i32 24
  store i32 %76, ptr %77, align 4
  %78 = load ptr, ptr %54, align 4
  %79 = getelementptr inbounds %struct.atmel_hlcdc_dc_desc, ptr %78, i32 0, i32 2
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30, i32 25
  store i32 %80, ptr %81, align 4
  %82 = load ptr, ptr %54, align 4
  %83 = getelementptr inbounds %struct.atmel_hlcdc_dc_desc, ptr %82, i32 0, i32 3
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30, i32 26
  store i32 %84, ptr %85, align 4
  %86 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30, i32 27
  store ptr @mode_config_funcs, ptr %86, align 4
  %87 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30, i32 96
  store i8 1, ptr %87, align 1
  br label %93

88:                                               ; preds = %68, %63, %58
  %89 = phi i32 [ %56, %58 ], [ %61, %63 ], [ %66, %68 ]
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.13) #7
  br label %157

93:                                               ; preds = %88, %70
  tail call void @drm_mode_config_reset(ptr noundef %4) #6
  %94 = load ptr, ptr %9, align 4
  %95 = tail call i32 @__pm_runtime_resume(ptr noundef %94, i32 noundef 4) #6
  %96 = load ptr, ptr %34, align 4
  %97 = getelementptr inbounds %struct.atmel_hlcdc, ptr %96, i32 0, i32 4
  %98 = load i32, ptr %97, align 4
  %99 = load ptr, ptr %35, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %100 = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %99, i32 0, i32 2
  %101 = load ptr, ptr %100, align 4
  %102 = load ptr, ptr %101, align 4
  %103 = tail call i32 @regmap_write(ptr noundef %102, i32 noundef 48, i32 noundef -1) #6
  %104 = load ptr, ptr %100, align 4
  %105 = load ptr, ptr %104, align 4
  %106 = call i32 @regmap_read(ptr noundef %105, i32 noundef 56, ptr noundef nonnull %2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %107 = load ptr, ptr %9, align 4
  %108 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 4
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.drm_driver, ptr %109, i32 0, i32 21
  %111 = load ptr, ptr %110, align 4
  %112 = call i32 @devm_request_threaded_irq(ptr noundef %107, i32 noundef %98, ptr noundef nonnull @atmel_hlcdc_dc_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %111, ptr noundef %4) #6
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %151

114:                                              ; preds = %93
  %115 = load ptr, ptr %35, align 4
  %116 = getelementptr %struct.atmel_hlcdc_dc, ptr %115, i32 0, i32 4, i32 0
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  %119 = select i1 %118, i32 0, i32 256
  %120 = getelementptr %struct.atmel_hlcdc_dc, ptr %115, i32 0, i32 4, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  %123 = select i1 %122, i32 0, i32 512
  %124 = or i32 %123, %119
  %125 = getelementptr %struct.atmel_hlcdc_dc, ptr %115, i32 0, i32 4, i32 2
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  %128 = select i1 %127, i32 0, i32 1024
  %129 = or i32 %124, %128
  %130 = getelementptr %struct.atmel_hlcdc_dc, ptr %115, i32 0, i32 4, i32 3
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  %133 = select i1 %132, i32 0, i32 2048
  %134 = or i32 %129, %133
  %135 = getelementptr %struct.atmel_hlcdc_dc, ptr %115, i32 0, i32 4, i32 4
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  %138 = select i1 %137, i32 0, i32 4096
  %139 = or i32 %134, %138
  %140 = getelementptr %struct.atmel_hlcdc_dc, ptr %115, i32 0, i32 4, i32 5
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, null
  %143 = select i1 %142, i32 0, i32 8192
  %144 = or i32 %139, %143
  %145 = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %115, i32 0, i32 2
  %146 = load ptr, ptr %145, align 4
  %147 = load ptr, ptr %146, align 4
  %148 = call i32 @regmap_write(ptr noundef %147, i32 noundef 44, i32 noundef %144) #6
  %149 = load ptr, ptr %9, align 4
  %150 = call i32 @__pm_runtime_idle(ptr noundef %149, i32 noundef 4) #6
  br label %163

151:                                              ; preds = %93
  %152 = load ptr, ptr %9, align 4
  %153 = call i32 @__pm_runtime_idle(ptr noundef %152, i32 noundef 4) #6
  %154 = icmp slt i32 %112, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %151
  %156 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %156, ptr noundef nonnull @.str.14) #7
  br label %157

157:                                              ; preds = %155, %91, %51
  %158 = phi i32 [ %49, %51 ], [ %89, %91 ], [ %112, %155 ]
  %159 = load ptr, ptr %9, align 4
  call void @__pm_runtime_disable(ptr noundef %159, i1 noundef zeroext true) #6
  %160 = load ptr, ptr %34, align 4
  %161 = getelementptr inbounds %struct.atmel_hlcdc, ptr %160, i32 0, i32 1
  %162 = load ptr, ptr %161, align 4
  call void @clk_disable(ptr noundef %162) #6
  call void @clk_unprepare(ptr noundef %162) #6
  br label %169

163:                                              ; preds = %151, %114
  %164 = getelementptr i8, ptr %10, i32 64
  store ptr %4, ptr %164, align 8
  call void @drm_kms_helper_poll_init(ptr noundef %4) #6
  %165 = call i32 @drm_dev_register(ptr noundef %4, i32 noundef 0) #6
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %163
  call void @drm_fbdev_generic_setup(ptr noundef %4, i32 noundef 24) #6
  br label %171

168:                                              ; preds = %163
  call fastcc void @atmel_hlcdc_dc_unload(ptr noundef %4)
  br label %169

169:                                              ; preds = %168, %157, %44, %23, %22, %17
  %170 = phi i32 [ %165, %168 ], [ -12, %23 ], [ -19, %17 ], [ -22, %22 ], [ %158, %157 ], [ %45, %44 ]
  call void @drm_dev_put(ptr noundef %4) #6
  br label %171

171:                                              ; preds = %169, %167, %6
  %172 = phi i32 [ %7, %6 ], [ %170, %169 ], [ 0, %167 ]
  ret i32 %172
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_hlcdc_dc_drm_remove(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @drm_dev_unregister(ptr noundef %3) #6
  tail call fastcc void @atmel_hlcdc_dc_unload(ptr noundef %3)
  tail call void @drm_dev_put(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dev_alloc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fbdev_generic_setup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @atmel_hlcdc_dc_unload(ptr noundef %0) unnamed_addr #4 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  tail call void @drm_kms_helper_poll_fini(ptr noundef %0) #6
  tail call void @drm_atomic_helper_shutdown(ptr noundef %0) #6
  tail call void @drm_mode_config_cleanup(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #6
  %8 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %9 = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 48, i32 noundef -1) #6
  %13 = load ptr, ptr %9, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 @regmap_read(ptr noundef %14, i32 noundef 56, ptr noundef nonnull %2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %16 = load ptr, ptr %5, align 4
  %17 = call i32 @__pm_runtime_idle(ptr noundef %16, i32 noundef 4) #6
  store ptr null, ptr %3, align 4
  %18 = load ptr, ptr %5, align 4
  call void @__pm_runtime_disable(ptr noundef %18, i1 noundef zeroext true) #6
  %19 = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %4, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.atmel_hlcdc, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  call void @clk_disable(ptr noundef %22) #6
  call void @clk_unprepare(ptr noundef %22) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_cma_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_cma_dumb_create(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_poll(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ioctl(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_mmap(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_open(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_hlcdc_create_outputs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_hlcdc_create_planes(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_hlcdc_crtc_create(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_create(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_hlcdc_dc_irq_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 @regmap_read(ptr noundef %9, i32 noundef 52, ptr noundef nonnull %3) #6
  %11 = load ptr, ptr %7, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = call i32 @regmap_read(ptr noundef %12, i32 noundef 56, ptr noundef nonnull %4) #6
  %14 = load i32, ptr %3, align 4
  %15 = load i32, ptr %4, align 4
  %16 = and i32 %15, %14
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %114, label %18

18:                                               ; preds = %2
  %19 = and i32 %16, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %6, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  call void @atmel_hlcdc_crtc_irq(ptr noundef %23) #6
  br label %24

24:                                               ; preds = %21, %18
  %25 = and i32 %16, 256
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %24
  %28 = getelementptr %struct.atmel_hlcdc_dc, ptr %6, i32 0, i32 4, i32 0
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %29, align 4
  %33 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %32, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, -1
  %36 = icmp ult i32 %35, 3
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = getelementptr i8, ptr %29, i32 -456
  call void @atmel_hlcdc_plane_irq(ptr noundef %38) #6
  br label %39

39:                                               ; preds = %37, %31, %27, %24
  %40 = and i32 %16, 512
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %39
  %43 = getelementptr %struct.atmel_hlcdc_dc, ptr %6, i32 0, i32 4, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %44, align 4
  %48 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %47, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, -1
  %51 = icmp ult i32 %50, 3
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = getelementptr i8, ptr %44, i32 -456
  call void @atmel_hlcdc_plane_irq(ptr noundef %53) #6
  br label %54

54:                                               ; preds = %52, %46, %42, %39
  %55 = and i32 %16, 1024
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %54
  %58 = getelementptr %struct.atmel_hlcdc_dc, ptr %6, i32 0, i32 4, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %69, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr %59, align 4
  %63 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %62, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, -1
  %66 = icmp ult i32 %65, 3
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = getelementptr i8, ptr %59, i32 -456
  call void @atmel_hlcdc_plane_irq(ptr noundef %68) #6
  br label %69

69:                                               ; preds = %67, %61, %57, %54
  %70 = and i32 %16, 2048
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %84, label %72

72:                                               ; preds = %69
  %73 = getelementptr %struct.atmel_hlcdc_dc, ptr %6, i32 0, i32 4, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %84, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %74, align 4
  %78 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %77, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %79, -1
  %81 = icmp ult i32 %80, 3
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = getelementptr i8, ptr %74, i32 -456
  call void @atmel_hlcdc_plane_irq(ptr noundef %83) #6
  br label %84

84:                                               ; preds = %82, %76, %72, %69
  %85 = and i32 %16, 4096
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %99, label %87

87:                                               ; preds = %84
  %88 = getelementptr %struct.atmel_hlcdc_dc, ptr %6, i32 0, i32 4, i32 4
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %99, label %91

91:                                               ; preds = %87
  %92 = load ptr, ptr %89, align 4
  %93 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %92, i32 0, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = add i32 %94, -1
  %96 = icmp ult i32 %95, 3
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = getelementptr i8, ptr %89, i32 -456
  call void @atmel_hlcdc_plane_irq(ptr noundef %98) #6
  br label %99

99:                                               ; preds = %97, %91, %87, %84
  %100 = and i32 %16, 8192
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %114, label %102

102:                                              ; preds = %99
  %103 = getelementptr %struct.atmel_hlcdc_dc, ptr %6, i32 0, i32 4, i32 5
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %114, label %106

106:                                              ; preds = %102
  %107 = load ptr, ptr %104, align 4
  %108 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %107, i32 0, i32 1
  %109 = load i32, ptr %108, align 4
  %110 = add i32 %109, -1
  %111 = icmp ult i32 %110, 3
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = getelementptr i8, ptr %104, i32 -456
  call void @atmel_hlcdc_plane_irq(ptr noundef %113) #6
  br label %114

114:                                              ; preds = %112, %106, %102, %99, %2
  %115 = phi i32 [ 0, %2 ], [ 1, %112 ], [ 1, %106 ], [ 1, %102 ], [ 1, %99 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %115
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @atmel_hlcdc_crtc_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @atmel_hlcdc_plane_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_shutdown(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_hlcdc_dc_drm_suspend(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @drm_atomic_helper_suspend(ptr noundef %3) #6
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = ptrtoint ptr %9 to i32
  br label %22

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %5, i32 0, i32 5
  %15 = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %5, i32 0, i32 5, i32 1
  store ptr %9, ptr %15, align 4
  %16 = tail call i32 @regmap_read(ptr noundef %8, i32 noundef 52, ptr noundef %14) #6
  %17 = load i32, ptr %14, align 4
  %18 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 48, i32 noundef %17) #6
  %19 = load ptr, ptr %6, align 4
  %20 = getelementptr inbounds %struct.atmel_hlcdc, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  tail call void @clk_disable(ptr noundef %21) #6
  tail call void @clk_unprepare(ptr noundef %21) #6
  br label %22

22:                                               ; preds = %13, %11
  %23 = phi i32 [ %12, %11 ], [ 0, %13 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_hlcdc_dc_drm_resume(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.atmel_hlcdc, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @clk_prepare(ptr noundef %9) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = tail call i32 @clk_enable(ptr noundef %9) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @clk_unprepare(ptr noundef %9) #6
  br label %16

16:                                               ; preds = %15, %12, %1
  %17 = load ptr, ptr %6, align 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %5, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 44, i32 noundef %20) #6
  %22 = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %5, i32 0, i32 5, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @drm_atomic_helper_resume(ptr noundef %3, ptr noundef %23) #6
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_suspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_resume(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
