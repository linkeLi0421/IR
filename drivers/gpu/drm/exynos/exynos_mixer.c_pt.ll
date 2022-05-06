; ModuleID = '/llk/IR/drivers/gpu/drm/exynos/exynos_mixer.c_pt.bc'
source_filename = "../drivers/gpu/drm/exynos/exynos_mixer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mixer_drv_data = type { i32, i8, i8 }
%struct.component_ops = type { ptr, ptr }
%struct.exynos_drm_plane_config = type { i32, i32, ptr, i32, i32 }
%struct.exynos_drm_crtc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.anon.77 = type { i32, i32, i32, i32, i32 }
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
%struct.mixer_context = type { ptr, ptr, ptr, ptr, ptr, [3 x %struct.exynos_drm_plane], i32, i32, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.exynos_drm_plane = type { %struct.drm_plane, ptr, i32 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.exynos_drm_crtc = type { %struct.drm_crtc, i32, ptr, ptr, ptr, i8 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.exynos_drm_plane_state = type { %struct.drm_plane_state, %struct.exynos_drm_rect, %struct.exynos_drm_rect, i32, i32 }
%struct.exynos_drm_rect = type { i32, i32, i32, i32 }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.72, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.72 = type { [4 x i8] }

@mixer_match_types = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-mixer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4210_mxr_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4212-mixer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4212_mxr_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5-mixer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5250_mxr_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-mixer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5250_mxr_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-mixer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5420_mxr_drv_data }, %struct.of_device_id zeroinitializer], align 4
@.str = private unnamed_addr constant [13 x i8] c"exynos-mixer\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@exynos_mixer_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_mixer_suspend, ptr @exynos_mixer_resume, ptr null }, align 4
@mixer_driver = dso_local local_unnamed_addr global %struct.platform_driver { ptr @mixer_probe, ptr @mixer_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr @__this_module, ptr null, i8 0, i32 0, ptr @mixer_match_types, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_mixer_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@exynos4210_mxr_drv_data = internal constant %struct.mixer_drv_data { i32 0, i8 1, i8 1 }, align 4
@exynos4212_mxr_drv_data = internal constant %struct.mixer_drv_data { i32 0, i8 1, i8 0 }, align 4
@exynos5250_mxr_drv_data = internal constant %struct.mixer_drv_data { i32 1, i8 0, i8 0 }, align 4
@exynos5420_mxr_drv_data = internal constant %struct.mixer_drv_data { i32 2, i8 0, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"*ERROR* failed to alloc mixer context.\0A\00", align 1
@mixer_component_ops = internal constant %struct.component_ops { ptr @mixer_bind, ptr @mixer_unbind }, align 4
@plane_configs = internal constant [3 x %struct.exynos_drm_plane_config] [%struct.exynos_drm_plane_config { i32 0, i32 1, ptr @mixer_formats, i32 7, i32 53 }, %struct.exynos_drm_plane_config { i32 1, i32 2, ptr @mixer_formats, i32 7, i32 53 }, %struct.exynos_drm_plane_config { i32 2, i32 0, ptr @vp_formats, i32 2, i32 46 }], align 4
@mixer_crtc_ops = internal constant %struct.exynos_drm_crtc_ops { ptr @mixer_atomic_enable, ptr @mixer_atomic_disable, ptr @mixer_enable_vblank, ptr @mixer_disable_vblank, ptr @mixer_mode_valid, ptr @mixer_mode_fixup, ptr null, ptr @mixer_atomic_begin, ptr @mixer_update_plane, ptr @mixer_disable_plane, ptr @mixer_atomic_flush, ptr null }, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"*ERROR* mixer_resources_init failed ret=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"*ERROR* vp_resources_init failed ret=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"mixer\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"failed to get clock 'mixer'\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"hdmi\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"failed to get clock 'hdmi'\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"sclk_hdmi\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"failed to get clock 'sclk_hdmi'\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"get memory resource failed.\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"register mapping failed.\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"drm_mixer\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"request interrupt failed.\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"vp\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"failed to get clock 'vp'\0A\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"sclk_mixer\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"failed to get clock 'sclk_mixer'\0A\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"mout_mixer\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"failed to get clock 'mout_mixer'\0A\00", align 1
@mixer_formats = internal constant [7 x i32] [i32 842093144, i32 842093121, i32 892424792, i32 892424769, i32 909199186, i32 875713112, i32 875713089], align 4
@vp_formats = internal constant [2 x i32] [i32 842094158, i32 825382478], align 4
@.str.21 = private unnamed_addr constant [32 x i8] c"failed to enable MIXER device.\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.22 = private unnamed_addr constant [38 x i8] c"drivers/gpu/drm/exynos/exynos_mixer.c\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"failed to reset Video Processor\0A\00", align 1
@filter_y_horiz_tap8 = internal unnamed_addr constant [64 x i8] c"\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\02\04\05\06\06\06\06\06\05\05\04\03\02\01\01\00\FA\F4\F0\EE\EC\EB\EC\EC\EE\F0\F3\F6\F8\FB\FE\7F~}yrkcYOD9.#\19\10\08", align 1
@filter_y_vert_tap4 = internal unnamed_addr constant [64 x i8] c"\00\FD\FA\F8\F8\F8\F8\F9\FA\FB\FC\FD\FE\FF\FF\00\7F~|vof\\QF;0%\1B\13\0B\05\00\05\0B\13\1B%0;FQ\\fov|~\00\00\FF\FF\FE\FD\FC\FB\FA\F9\F8\F8\F8\F8\FA\FD", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"MXR_STATUS = %08x\0A\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"MXR_CFG = %08x\0A\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"MXR_INT_EN = %08x\0A\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"MXR_INT_STATUS = %08x\0A\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"MXR_LAYER_CFG = %08x\0A\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"MXR_VIDEO_CFG = %08x\0A\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"MXR_GRAPHIC0_CFG = %08x\0A\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"MXR_GRAPHIC0_BASE = %08x\0A\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"MXR_GRAPHIC0_SPAN = %08x\0A\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"MXR_GRAPHIC0_WH = %08x\0A\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"MXR_GRAPHIC0_SXY = %08x\0A\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"MXR_GRAPHIC0_DXY = %08x\0A\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"MXR_GRAPHIC1_CFG = %08x\0A\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"MXR_GRAPHIC1_BASE = %08x\0A\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"MXR_GRAPHIC1_SPAN = %08x\0A\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"MXR_GRAPHIC1_WH = %08x\0A\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"MXR_GRAPHIC1_SXY = %08x\0A\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"MXR_GRAPHIC1_DXY = %08x\0A\00", align 1
@.str.42 = private unnamed_addr constant [39 x i8] c"xres=%d, yres=%d, refresh=%d, intl=%d\0A\00", align 1
@mixer_mode_fixup.modes = internal unnamed_addr constant [4 x %struct.anon.77] [%struct.anon.77 { i32 720, i32 480, i32 858, i32 525, i32 0 }, %struct.anon.77 { i32 720, i32 576, i32 864, i32 625, i32 2 }, %struct.anon.77 { i32 1280, i32 720, i32 1650, i32 750, i32 1 }, %struct.anon.77 { i32 1920, i32 1080, i32 2200, i32 1125, i32 65 }], align 4
@.str.43 = private unnamed_addr constant [27 x i8] c"timeout waiting for VSYNC\0A\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"win: %d\0A\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"VP_ENABLE = %08x\0A\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"VP_SRESET = %08x\0A\00", align 1
@.str.47 = private unnamed_addr constant [25 x i8] c"VP_SHADOW_UPDATE = %08x\0A\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"VP_FIELD_ID = %08x\0A\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"VP_MODE = %08x\0A\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"VP_IMG_SIZE_Y = %08x\0A\00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"VP_IMG_SIZE_C = %08x\0A\00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c"VP_PER_RATE_CTRL = %08x\0A\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"VP_TOP_Y_PTR = %08x\0A\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"VP_BOT_Y_PTR = %08x\0A\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"VP_TOP_C_PTR = %08x\0A\00", align 1
@.str.56 = private unnamed_addr constant [21 x i8] c"VP_BOT_C_PTR = %08x\0A\00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"VP_ENDIAN_MODE = %08x\0A\00", align 1
@.str.58 = private unnamed_addr constant [26 x i8] c"VP_SRC_H_POSITION = %08x\0A\00", align 1
@.str.59 = private unnamed_addr constant [26 x i8] c"VP_SRC_V_POSITION = %08x\0A\00", align 1
@.str.60 = private unnamed_addr constant [21 x i8] c"VP_SRC_WIDTH = %08x\0A\00", align 1
@.str.61 = private unnamed_addr constant [22 x i8] c"VP_SRC_HEIGHT = %08x\0A\00", align 1
@.str.62 = private unnamed_addr constant [26 x i8] c"VP_DST_H_POSITION = %08x\0A\00", align 1
@.str.63 = private unnamed_addr constant [26 x i8] c"VP_DST_V_POSITION = %08x\0A\00", align 1
@.str.64 = private unnamed_addr constant [21 x i8] c"VP_DST_WIDTH = %08x\0A\00", align 1
@.str.65 = private unnamed_addr constant [22 x i8] c"VP_DST_HEIGHT = %08x\0A\00", align 1
@.str.66 = private unnamed_addr constant [19 x i8] c"VP_H_RATIO = %08x\0A\00", align 1
@.str.67 = private unnamed_addr constant [19 x i8] c"VP_V_RATIO = %08x\0A\00", align 1
@.str.68 = private unnamed_addr constant [53 x i8] c"*ERROR* Failed to prepare_enable the mixer clk [%d]\0A\00", align 1
@.str.69 = private unnamed_addr constant [52 x i8] c"*ERROR* Failed to prepare_enable the hdmi clk [%d]\0A\00", align 1
@.str.70 = private unnamed_addr constant [50 x i8] c"*ERROR* Failed to prepare_enable the vp clk [%d]\0A\00", align 1
@.str.71 = private unnamed_addr constant [58 x i8] c"*ERROR* Failed to prepare_enable the sclk_mixer clk [%d]\0A\00", align 1

@__mod_of__mixer_match_types_device_table = dso_local alias [6 x %struct.of_device_id], ptr @mixer_match_types

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mixer_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 1472, i32 noundef 3520) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #4
  br label %31

6:                                                ; preds = %1
  %7 = tail call ptr @of_device_get_match_data(ptr noundef %2) #4
  store ptr %0, ptr %3, align 8
  %8 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 1
  store ptr %2, ptr %8, align 4
  %9 = load i32, ptr %7, align 4
  %10 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 17
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mixer_drv_data, ptr %7, i32 0, i32 1
  %12 = load i8, ptr %11, align 4, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %16, 8
  store i32 %17, ptr %15, align 4
  br label %18

18:                                               ; preds = %14, %6
  %19 = getelementptr inbounds %struct.mixer_drv_data, ptr %7, i32 0, i32 2
  %20 = load i8, ptr %19, align 1, !range !8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %24, 16
  store i32 %25, ptr %23, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %27, align 8
  tail call void @pm_runtime_enable(ptr noundef %2) #4
  %28 = tail call i32 @component_add(ptr noundef %2, ptr noundef nonnull @mixer_component_ops) #4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #4
  br label %31

31:                                               ; preds = %30, %26, %5
  %32 = phi i32 [ -12, %5 ], [ %28, %30 ], [ 0, %26 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mixer_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #4
  tail call void @component_del(ptr noundef %2, ptr noundef nonnull @mixer_component_ops) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mixer_bind(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mixer_context, ptr %5, i32 0, i32 2
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.mixer_context, ptr %5, i32 0, i32 10
  store i32 0, ptr %9, align 8
  %10 = tail call ptr @devm_clk_get(ptr noundef %8, ptr noundef nonnull @.str.5) #4
  %11 = getelementptr inbounds %struct.mixer_context, ptr %5, i32 0, i32 11
  store ptr %10, ptr %11, align 4
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %46, label %13

13:                                               ; preds = %3
  %14 = tail call ptr @devm_clk_get(ptr noundef %8, ptr noundef nonnull @.str.7) #4
  %15 = getelementptr inbounds %struct.mixer_context, ptr %5, i32 0, i32 13
  store ptr %14, ptr %15, align 4
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %42, label %17

17:                                               ; preds = %13
  %18 = tail call ptr @devm_clk_get(ptr noundef %8, ptr noundef nonnull @.str.9) #4
  %19 = getelementptr inbounds %struct.mixer_context, ptr %5, i32 0, i32 15
  store ptr %18, ptr %19, align 4
  %20 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %46, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %5, align 8
  %23 = tail call ptr @platform_get_resource(ptr noundef %22, i32 noundef 512, i32 noundef 0) #4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %46, label %25

25:                                               ; preds = %21
  %26 = load i32, ptr %23, align 4
  %27 = getelementptr inbounds %struct.resource, ptr %23, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = sub i32 1, %26
  %30 = add i32 %29, %28
  %31 = tail call ptr @devm_ioremap(ptr noundef %8, i32 noundef %26, i32 noundef %30) #4
  %32 = getelementptr inbounds %struct.mixer_context, ptr %5, i32 0, i32 8
  store ptr %31, ptr %32, align 8
  %33 = icmp eq ptr %31, null
  br i1 %33, label %46, label %34

34:                                               ; preds = %25
  %35 = load ptr, ptr %5, align 8
  %36 = tail call i32 @platform_get_irq(ptr noundef %35, i32 noundef 0) #4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.mixer_context, ptr %5, i32 0, i32 7
  store i32 %36, ptr %39, align 4
  %40 = tail call i32 @devm_request_threaded_irq(ptr noundef %8, i32 noundef %36, ptr noundef nonnull @mixer_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef %5) #4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %53, label %46

42:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.8) #5
  %43 = load ptr, ptr %15, align 4
  %44 = ptrtoint ptr %43 to i32
  %45 = icmp eq ptr %43, null
  br i1 %45, label %53, label %49

46:                                               ; preds = %38, %25, %21, %17, %3
  %47 = phi ptr [ @.str.6, %3 ], [ @.str.10, %17 ], [ @.str.11, %21 ], [ @.str.12, %25 ], [ @.str.14, %38 ]
  %48 = phi i32 [ -19, %3 ], [ -19, %17 ], [ -6, %21 ], [ -6, %25 ], [ %40, %38 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull %47) #5
  br label %49

49:                                               ; preds = %46, %42, %34
  %50 = phi i32 [ %44, %42 ], [ %36, %34 ], [ %48, %46 ]
  %51 = getelementptr inbounds %struct.mixer_context, ptr %5, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %52, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, i32 noundef %50) #4
  br label %107

53:                                               ; preds = %42, %38
  %54 = getelementptr inbounds %struct.mixer_context, ptr %5, i32 0, i32 6
  %55 = load volatile i32, ptr %54, align 4
  %56 = and i32 %55, 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %102, label %58

58:                                               ; preds = %53
  %59 = load ptr, ptr %5, align 8
  %60 = getelementptr inbounds %struct.platform_device, ptr %59, i32 0, i32 3
  %61 = tail call ptr @devm_clk_get(ptr noundef %60, ptr noundef nonnull @.str.15) #4
  %62 = getelementptr inbounds %struct.mixer_context, ptr %5, i32 0, i32 12
  store ptr %61, ptr %62, align 8
  %63 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  br i1 %63, label %97, label %64

64:                                               ; preds = %58
  %65 = load volatile i32, ptr %54, align 4
  %66 = and i32 %65, 16
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %84, label %68

68:                                               ; preds = %64
  %69 = tail call ptr @devm_clk_get(ptr noundef %60, ptr noundef nonnull @.str.17) #4
  %70 = getelementptr inbounds %struct.mixer_context, ptr %5, i32 0, i32 14
  store ptr %69, ptr %70, align 8
  %71 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  br i1 %71, label %97, label %72

72:                                               ; preds = %68
  %73 = tail call ptr @devm_clk_get(ptr noundef %60, ptr noundef nonnull @.str.19) #4
  %74 = getelementptr inbounds %struct.mixer_context, ptr %5, i32 0, i32 16
  store ptr %73, ptr %74, align 8
  %75 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  br i1 %75, label %97, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.mixer_context, ptr %5, i32 0, i32 15
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  %80 = icmp eq ptr %73, null
  %81 = select i1 %79, i1 true, i1 %80
  br i1 %81, label %84, label %82

82:                                               ; preds = %76
  %83 = tail call i32 @clk_set_parent(ptr noundef nonnull %73, ptr noundef nonnull %78) #4
  br label %84

84:                                               ; preds = %82, %76, %64
  %85 = load ptr, ptr %5, align 8
  %86 = tail call ptr @platform_get_resource(ptr noundef %85, i32 noundef 512, i32 noundef 1) #4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %97, label %88

88:                                               ; preds = %84
  %89 = load i32, ptr %86, align 4
  %90 = getelementptr inbounds %struct.resource, ptr %86, i32 0, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = sub i32 1, %89
  %93 = add i32 %92, %91
  %94 = tail call ptr @devm_ioremap(ptr noundef %60, i32 noundef %89, i32 noundef %93) #4
  %95 = getelementptr inbounds %struct.mixer_context, ptr %5, i32 0, i32 9
  store ptr %94, ptr %95, align 4
  %96 = icmp eq ptr %94, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %88, %84, %72, %68, %58
  %98 = phi ptr [ @.str.16, %58 ], [ @.str.18, %68 ], [ @.str.20, %72 ], [ @.str.11, %84 ], [ @.str.12, %88 ]
  %99 = phi i32 [ -19, %58 ], [ -19, %68 ], [ -19, %72 ], [ -6, %84 ], [ -6, %88 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull %98) #5
  %100 = getelementptr inbounds %struct.mixer_context, ptr %5, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %101, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef %99) #4
  br label %139

102:                                              ; preds = %88, %53
  %103 = getelementptr inbounds %struct.mixer_context, ptr %5, i32 0, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.mixer_context, ptr %5, i32 0, i32 3
  %106 = tail call i32 @exynos_drm_register_dma(ptr noundef %2, ptr noundef %104, ptr noundef %105) #4
  br label %107

107:                                              ; preds = %102, %49
  %108 = phi i32 [ %50, %49 ], [ %106, %102 ]
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %139

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.mixer_context, ptr %5, i32 0, i32 6
  %112 = getelementptr %struct.mixer_context, ptr %5, i32 0, i32 5, i32 0
  %113 = tail call i32 @exynos_plane_init(ptr noundef %2, ptr noundef %112, i32 noundef 0, ptr noundef nonnull @plane_configs) #4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %139

115:                                              ; preds = %110
  %116 = getelementptr %struct.mixer_context, ptr %5, i32 0, i32 5, i32 1
  %117 = tail call i32 @exynos_plane_init(ptr noundef %2, ptr noundef %116, i32 noundef 1, ptr noundef getelementptr inbounds ([3 x %struct.exynos_drm_plane_config], ptr @plane_configs, i32 0, i32 1)) #4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %139

119:                                              ; preds = %115
  %120 = load volatile i32, ptr %111, align 4
  %121 = and i32 %120, 8
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %119
  %124 = getelementptr %struct.mixer_context, ptr %5, i32 0, i32 5, i32 2
  %125 = tail call i32 @exynos_plane_init(ptr noundef %2, ptr noundef %124, i32 noundef 2, ptr noundef getelementptr inbounds ([3 x %struct.exynos_drm_plane_config], ptr @plane_configs, i32 0, i32 2)) #4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %139

127:                                              ; preds = %123, %119
  %128 = getelementptr inbounds %struct.mixer_context, ptr %5, i32 0, i32 5
  %129 = tail call ptr @exynos_drm_crtc_create(ptr noundef %2, ptr noundef %128, i32 noundef 2, ptr noundef nonnull @mixer_crtc_ops, ptr noundef %5) #4
  %130 = getelementptr inbounds %struct.mixer_context, ptr %5, i32 0, i32 4
  store ptr %129, ptr %130, align 8
  %131 = icmp ugt ptr %129, inttoptr (i32 -4096 to ptr)
  br i1 %131, label %132, label %139

132:                                              ; preds = %127
  %133 = load ptr, ptr %6, align 8
  %134 = getelementptr inbounds %struct.mixer_context, ptr %5, i32 0, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.mixer_context, ptr %5, i32 0, i32 3
  tail call void @exynos_drm_unregister_dma(ptr noundef %133, ptr noundef %135, ptr noundef %136) #4
  %137 = load ptr, ptr %130, align 8
  %138 = ptrtoint ptr %137 to i32
  tail call void @devm_kfree(ptr noundef %0, ptr noundef %5) #4
  br label %139

139:                                              ; preds = %132, %127, %123, %115, %110, %107, %97
  %140 = phi i32 [ %138, %132 ], [ %108, %107 ], [ 0, %127 ], [ %99, %97 ], [ %113, %110 ], [ %117, %115 ], [ %125, %123 ]
  ret i32 %140
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mixer_unbind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mixer_context, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.mixer_context, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mixer_context, ptr %5, i32 0, i32 3
  tail call void @exynos_drm_unregister_dma(ptr noundef %7, ptr noundef %9, ptr noundef %10) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exynos_drm_crtc_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_drm_register_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mixer_irq_handler(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %3) #4
  %4 = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 12
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %66, label %10

10:                                               ; preds = %2
  %11 = and i32 %7, -2050
  %12 = or i32 %11, 2048
  %13 = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 6
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %62, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 17
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, -1
  %21 = icmp ult i32 %20, 2
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr i8, ptr %23, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %26 = and i32 %25, 1610612736
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %62, label %66

28:                                               ; preds = %17
  %29 = load volatile i32, ptr %13, align 4
  %30 = and i32 %29, 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 9
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 8
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %66

38:                                               ; preds = %32, %28
  %39 = load ptr, ptr %4, align 8
  %40 = getelementptr i8, ptr %39, i32 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %42 = load ptr, ptr %4, align 8
  %43 = getelementptr i8, ptr %42, i32 8196
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %45 = icmp eq i32 %41, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %38
  %47 = load ptr, ptr %4, align 8
  %48 = getelementptr i8, ptr %47, i32 36
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %50 = load ptr, ptr %4, align 8
  %51 = getelementptr i8, ptr %50, i32 8228
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %46
  %55 = load ptr, ptr %4, align 8
  %56 = getelementptr i8, ptr %55, i32 68
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %58 = load ptr, ptr %4, align 8
  %59 = getelementptr i8, ptr %58, i32 8260
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %61 = icmp eq i32 %57, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %54, %22, %10
  %63 = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 4
  %64 = load ptr, ptr %63, align 8
  %65 = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %64) #4
  br label %66

66:                                               ; preds = %62, %54, %46, %38, %32, %22, %2
  %67 = phi i32 [ %12, %62 ], [ %12, %54 ], [ %7, %2 ], [ %12, %22 ], [ %12, %32 ], [ %12, %38 ], [ %12, %46 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %68 = load ptr, ptr %4, align 8
  %69 = getelementptr i8, ptr %68, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #4, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !14
  %70 = load i16, ptr %3, align 4
  %71 = add i16 %70, 1
  store i16 %71, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !17
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mixer_atomic_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %295

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #4, !srcloc !19
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 0, i32 -1, ptr elementtype(i32) %14) #4, !srcloc !20
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !21
  br label %19

19:                                               ; preds = %18, %13
  %20 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.21) #5
  br label %295

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %0, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %23, align 4
  tail call void %26(ptr noundef nonnull %23, i1 noundef zeroext true) #4
  br label %27

27:                                               ; preds = %25, %21
  %28 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 8
  %29 = load ptr, ptr %28, align 8
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %31 = and i32 %30, -5
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %32 = load ptr, ptr %28, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %31) #4, !srcloc !13
  %33 = load ptr, ptr %28, align 8
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %35 = or i32 %34, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %36 = load ptr, ptr %28, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %35) #4, !srcloc !13
  %37 = load volatile i32, ptr %4, align 4
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %27
  %41 = load ptr, ptr %28, align 8
  %42 = getelementptr i8, ptr %41, i32 12
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %44 = or i32 %43, 2048
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %45 = load ptr, ptr %28, align 8
  %46 = getelementptr i8, ptr %45, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #4, !srcloc !13
  %47 = load ptr, ptr %28, align 8
  %48 = getelementptr i8, ptr %47, i32 8
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %50 = or i32 %49, 2048
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %51 = load ptr, ptr %28, align 8
  %52 = getelementptr i8, ptr %51, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #4, !srcloc !13
  br label %53

53:                                               ; preds = %40, %27
  %54 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 10
  %55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %54) #4
  %56 = load ptr, ptr %28, align 8
  %57 = getelementptr i8, ptr %56, i32 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %59 = or i32 %58, 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %60 = load ptr, ptr %28, align 8
  %61 = getelementptr i8, ptr %60, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %59) #4, !srcloc !13
  %62 = load ptr, ptr %28, align 8
  %63 = getelementptr i8, ptr %62, i32 4
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %65 = or i32 %64, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %66 = load ptr, ptr %28, align 8
  %67 = getelementptr i8, ptr %66, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %65) #4, !srcloc !13
  %68 = load ptr, ptr %28, align 8
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %70 = or i32 %69, 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %71 = load ptr, ptr %28, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %70) #4, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %72 = load ptr, ptr %28, align 8
  %73 = getelementptr i8, ptr %72, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 0) #4, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %74 = load ptr, ptr %28, align 8
  %75 = getelementptr i8, ptr %74, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 32896) #4, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %76 = load ptr, ptr %28, align 8
  %77 = getelementptr i8, ptr %76, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 32896) #4, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %78 = load ptr, ptr %28, align 8
  %79 = getelementptr i8, ptr %78, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 32896) #4, !srcloc !13
  %80 = load volatile i32, ptr %4, align 4
  %81 = and i32 %80, 8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %180, label %83

83:                                               ; preds = %53
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %84 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 9
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr i8, ptr %85, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 1) #4, !srcloc !13
  br label %87

87:                                               ; preds = %94, %83
  %88 = phi i32 [ 99, %83 ], [ %105, %94 ]
  %89 = load ptr, ptr %84, align 4
  %90 = getelementptr i8, ptr %89, i32 4
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %108, label %94

94:                                               ; preds = %87
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %95(i32 noundef 214748000) #4
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %96(i32 noundef 214748000) #4
  %97 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %97(i32 noundef 214748000) #4
  %98 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %98(i32 noundef 214748000) #4
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %99(i32 noundef 214748000) #4
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %100(i32 noundef 214748000) #4
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %101(i32 noundef 214748000) #4
  %102 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %102(i32 noundef 214748000) #4
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %103(i32 noundef 214748000) #4
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %104(i32 noundef 214748000) #4
  %105 = add nsw i32 %88, -1
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %87, !prof !24

107:                                              ; preds = %94
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 696, i32 noundef 9, ptr noundef nonnull @.str.23) #4
  br label %108

108:                                              ; preds = %107, %87
  br label %109

109:                                              ; preds = %109, %108
  %110 = phi i32 [ %133, %109 ], [ 108, %108 ]
  %111 = phi i32 [ %132, %109 ], [ 64, %108 ]
  %112 = phi ptr [ %134, %109 ], [ @filter_y_horiz_tap8, %108 ]
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i32
  %115 = shl nuw i32 %114, 24
  %116 = getelementptr i8, ptr %112, i32 1
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i32
  %119 = shl nuw nsw i32 %118, 16
  %120 = or i32 %119, %115
  %121 = getelementptr i8, ptr %112, i32 2
  %122 = load i8, ptr %121, align 1
  %123 = zext i8 %122 to i32
  %124 = shl nuw nsw i32 %123, 8
  %125 = or i32 %120, %124
  %126 = getelementptr i8, ptr %112, i32 3
  %127 = load i8, ptr %126, align 1
  %128 = zext i8 %127 to i32
  %129 = or i32 %125, %128
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %130 = load ptr, ptr %84, align 4
  %131 = getelementptr i8, ptr %130, i32 %110
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %129) #4, !srcloc !13
  %132 = add nsw i32 %111, -4
  %133 = add nuw nsw i32 %110, 4
  %134 = getelementptr i8, ptr %112, i32 4
  %135 = icmp eq i32 %132, 0
  br i1 %135, label %136, label %109

136:                                              ; preds = %136, %109
  %137 = phi i32 [ %160, %136 ], [ 236, %109 ]
  %138 = phi i32 [ %159, %136 ], [ 64, %109 ]
  %139 = phi ptr [ %161, %136 ], [ @filter_y_vert_tap4, %109 ]
  %140 = load i8, ptr %139, align 1
  %141 = zext i8 %140 to i32
  %142 = shl nuw i32 %141, 24
  %143 = getelementptr i8, ptr %139, i32 1
  %144 = load i8, ptr %143, align 1
  %145 = zext i8 %144 to i32
  %146 = shl nuw nsw i32 %145, 16
  %147 = or i32 %146, %142
  %148 = getelementptr i8, ptr %139, i32 2
  %149 = load i8, ptr %148, align 1
  %150 = zext i8 %149 to i32
  %151 = shl nuw nsw i32 %150, 8
  %152 = or i32 %147, %151
  %153 = getelementptr i8, ptr %139, i32 3
  %154 = load i8, ptr %153, align 1
  %155 = zext i8 %154 to i32
  %156 = or i32 %152, %155
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %157 = load ptr, ptr %84, align 4
  %158 = getelementptr i8, ptr %157, i32 %137
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 %156) #4, !srcloc !13
  %159 = add nsw i32 %138, -4
  %160 = add nuw nsw i32 %137, 4
  %161 = getelementptr i8, ptr %139, i32 4
  %162 = icmp eq i32 %159, 0
  br i1 %162, label %163, label %136

163:                                              ; preds = %136
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %164 = load ptr, ptr %84, align 4
  %165 = getelementptr i8, ptr %164, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %165, i32 16644856) #4, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %166 = load ptr, ptr %84, align 4
  %167 = getelementptr i8, ptr %166, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 -117901063) #4, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %168 = load ptr, ptr %84, align 4
  %169 = getelementptr i8, ptr %168, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %169, i32 -84148995) #4, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %170 = load ptr, ptr %84, align 4
  %171 = getelementptr i8, ptr %170, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %171, i32 -16777472) #4, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %172 = load ptr, ptr %84, align 4
  %173 = getelementptr i8, ptr %172, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %173, i32 2138995830) #4, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %174 = load ptr, ptr %84, align 4
  %175 = getelementptr i8, ptr %174, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %175, i32 1868979281) #4, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %176 = load ptr, ptr %84, align 4
  %177 = getelementptr i8, ptr %176, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %177, i32 1178284069) #4, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %178 = load ptr, ptr %84, align 4
  %179 = getelementptr i8, ptr %178, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %179, i32 454232837) #4, !srcloc !13
  br label %180

180:                                              ; preds = %163, %53
  %181 = load ptr, ptr %28, align 8
  %182 = getelementptr i8, ptr %181, i32 4
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %182) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %184 = and i32 %183, -17
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %185 = load ptr, ptr %28, align 8
  %186 = getelementptr i8, ptr %185, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %186, i32 %184) #4, !srcloc !13
  %187 = load ptr, ptr %28, align 8
  %188 = getelementptr i8, ptr %187, i32 4
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %188) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %190 = and i32 %189, -33
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %191 = load ptr, ptr %28, align 8
  %192 = getelementptr i8, ptr %191, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %192, i32 %190) #4, !srcloc !13
  %193 = load volatile i32, ptr %4, align 4
  %194 = and i32 %193, 8
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %203, label %196

196:                                              ; preds = %180
  %197 = load ptr, ptr %28, align 8
  %198 = getelementptr i8, ptr %197, i32 4
  %199 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %198) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %200 = and i32 %199, -9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %201 = load ptr, ptr %28, align 8
  %202 = getelementptr i8, ptr %201, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %202, i32 %200) #4, !srcloc !13
  br label %203

203:                                              ; preds = %196, %180
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %204 = load ptr, ptr %28, align 8
  %205 = getelementptr i8, ptr %204, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %205, i32 0) #4, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %206 = load ptr, ptr %28, align 8
  %207 = getelementptr i8, ptr %206, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %207, i32 0) #4, !srcloc !13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %54, i32 noundef %55) #4
  %208 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 4
  %209 = load ptr, ptr %208, align 8
  %210 = getelementptr inbounds %struct.drm_crtc, ptr %209, i32 0, i32 22
  %211 = load ptr, ptr %210, align 4
  %212 = getelementptr inbounds %struct.drm_crtc_state, ptr %211, i32 0, i32 7
  %213 = getelementptr inbounds %struct.drm_crtc_state, ptr %211, i32 0, i32 7, i32 1
  %214 = load i16, ptr %213, align 4
  %215 = getelementptr inbounds %struct.drm_crtc_state, ptr %211, i32 0, i32 7, i32 6
  %216 = load i16, ptr %215, align 2
  %217 = load volatile i32, ptr %4, align 4
  %218 = and i32 %217, 4
  %219 = xor i32 %218, 4
  %220 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 17
  %221 = load i32, ptr %220, align 4
  %222 = icmp eq i32 %221, 2
  br i1 %222, label %223, label %232

223:                                              ; preds = %203
  %224 = zext i16 %216 to i32
  %225 = shl nuw i32 %224, 16
  %226 = and i32 %225, 134152192
  %227 = and i16 %214, 2047
  %228 = zext i16 %227 to i32
  %229 = or i32 %226, %228
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %230 = load ptr, ptr %28, align 8
  %231 = getelementptr i8, ptr %230, i32 784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %231, i32 %229) #4, !srcloc !13
  br label %236

232:                                              ; preds = %203
  %233 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 18
  %234 = load i32, ptr %233, align 8
  %235 = or i32 %234, %219
  br label %236

236:                                              ; preds = %232, %223
  %237 = phi i32 [ %219, %223 ], [ %235, %232 ]
  %238 = load ptr, ptr %28, align 8
  %239 = getelementptr i8, ptr %238, i32 4
  %240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %239) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %241 = and i32 %237, 71
  %242 = and i32 %240, -72
  %243 = or i32 %242, %241
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %244 = load ptr, ptr %28, align 8
  %245 = getelementptr i8, ptr %244, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %245, i32 %243) #4, !srcloc !13
  %246 = tail call i32 @drm_default_rgb_quant_range(ptr noundef %212) #4
  %247 = load i16, ptr %215, align 2
  %248 = icmp ult i16 %247, 720
  br i1 %248, label %256, label %249

249:                                              ; preds = %236
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %250 = load ptr, ptr %28, align 8
  %251 = getelementptr i8, ptr %250, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %251, i32 1172629536) #4, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %252 = load ptr, ptr %28, align 8
  %253 = getelementptr i8, ptr %252, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %253, i32 1020087521) #4, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %254 = load ptr, ptr %28, align 8
  %255 = getelementptr i8, ptr %254, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %255, i32 236770284) #4, !srcloc !13
  br label %256

256:                                              ; preds = %249, %236
  %257 = phi i32 [ 1024, %249 ], [ 0, %236 ]
  %258 = icmp eq i32 %246, 2
  %259 = or i32 %257, 512
  %260 = select i1 %258, i32 %257, i32 %259
  %261 = load ptr, ptr %28, align 8
  %262 = getelementptr i8, ptr %261, i32 4
  %263 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %262) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %264 = and i32 %263, -1537
  %265 = or i32 %264, %260
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %266 = load ptr, ptr %28, align 8
  %267 = getelementptr i8, ptr %266, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %267, i32 %265) #4, !srcloc !13
  %268 = load ptr, ptr %28, align 8
  %269 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %268) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %270 = or i32 %269, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %271 = load ptr, ptr %28, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %271, i32 %270) #4, !srcloc !13
  %272 = load i32, ptr %220, align 4
  %273 = add i32 %272, -1
  %274 = icmp ult i32 %273, 2
  br i1 %274, label %275, label %282

275:                                              ; preds = %256
  %276 = load ptr, ptr %28, align 8
  %277 = getelementptr i8, ptr %276, i32 4
  %278 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %277) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %279 = or i32 %278, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %280 = load ptr, ptr %28, align 8
  %281 = getelementptr i8, ptr %280, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %281, i32 %279) #4, !srcloc !13
  br label %282

282:                                              ; preds = %275, %256
  %283 = load ptr, ptr %28, align 8
  %284 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %283) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %285 = or i32 %284, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %286 = load ptr, ptr %28, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %286, i32 %285) #4, !srcloc !13
  %287 = load volatile i32, ptr %4, align 4
  %288 = and i32 %287, 8
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %294, label %290

290:                                              ; preds = %282
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %291 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 9
  %292 = load ptr, ptr %291, align 4
  %293 = getelementptr i8, ptr %292, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %293, i32 1) #4, !srcloc !13
  br label %294

294:                                              ; preds = %290, %282
  tail call void @_set_bit(i32 noundef 0, ptr noundef %4) #4
  br label %295

295:                                              ; preds = %294, %19, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mixer_atomic_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %79, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %12 = and i32 %11, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %13 = load ptr, ptr %9, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %12) #4, !srcloc !13
  %14 = load ptr, ptr %9, align 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %22, %8
  %19 = phi i32 [ %20, %22 ], [ 20, %8 ]
  %20 = add nsw i32 %19, -1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #4
  %23 = load ptr, ptr %9, align 8
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %18, label %27

27:                                               ; preds = %22, %18, %8
  tail call fastcc void @mixer_regs_dump(ptr noundef %3)
  %28 = load ptr, ptr %2, align 8
  %29 = getelementptr inbounds %struct.mixer_context, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr %struct.mixer_context, ptr %3, i32 0, i32 5, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %30, i32 noundef 4, ptr noundef nonnull @.str.44, i32 noundef %32) #4
  %33 = getelementptr inbounds %struct.mixer_context, ptr %28, i32 0, i32 6
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.mixer_context, ptr %28, i32 0, i32 10
  %39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %38) #4
  %40 = load i32, ptr %31, align 4
  tail call fastcc void @mixer_cfg_layer(ptr noundef %28, i32 noundef %40, i32 noundef 0, i1 noundef zeroext false) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %39) #4
  br label %41

41:                                               ; preds = %37, %27
  %42 = load ptr, ptr %2, align 8
  %43 = getelementptr inbounds %struct.mixer_context, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr %struct.mixer_context, ptr %3, i32 0, i32 5, i32 1, i32 2
  %46 = load i32, ptr %45, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %44, i32 noundef 4, ptr noundef nonnull @.str.44, i32 noundef %46) #4
  %47 = getelementptr inbounds %struct.mixer_context, ptr %42, i32 0, i32 6
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.mixer_context, ptr %42, i32 0, i32 10
  %53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %52) #4
  %54 = load i32, ptr %45, align 4
  tail call fastcc void @mixer_cfg_layer(ptr noundef %42, i32 noundef %54, i32 noundef 0, i1 noundef zeroext false) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %52, i32 noundef %53) #4
  br label %55

55:                                               ; preds = %51, %41
  %56 = load ptr, ptr %2, align 8
  %57 = getelementptr inbounds %struct.mixer_context, ptr %56, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr %struct.mixer_context, ptr %3, i32 0, i32 5, i32 2, i32 2
  %60 = load i32, ptr %59, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %58, i32 noundef 4, ptr noundef nonnull @.str.44, i32 noundef %60) #4
  %61 = getelementptr inbounds %struct.mixer_context, ptr %56, i32 0, i32 6
  %62 = load volatile i32, ptr %61, align 4
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.mixer_context, ptr %56, i32 0, i32 10
  %67 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %66) #4
  %68 = load i32, ptr %59, align 4
  tail call fastcc void @mixer_cfg_layer(ptr noundef %56, i32 noundef %68, i32 noundef 0, i1 noundef zeroext false) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %66, i32 noundef %67) #4
  br label %69

69:                                               ; preds = %65, %55
  %70 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %0, i32 0, i32 4
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr %71, align 4
  tail call void %74(ptr noundef nonnull %71, i1 noundef zeroext false) #4
  br label %75

75:                                               ; preds = %73, %69
  %76 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = tail call i32 @__pm_runtime_idle(ptr noundef %77, i32 noundef 5) #4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %4) #4
  br label %79

79:                                               ; preds = %75, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mixer_enable_vblank(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = or i32 %5, 2
  store i32 %6, ptr %4, align 4
  %7 = load volatile i32, ptr %4, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr i8, ptr %12, i32 12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %15 = or i32 %14, 2048
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %16 = load ptr, ptr %11, align 8
  %17 = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #4, !srcloc !13
  %18 = load ptr, ptr %11, align 8
  %19 = getelementptr i8, ptr %18, i32 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %21 = or i32 %20, 2048
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %22 = load ptr, ptr %11, align 8
  %23 = getelementptr i8, ptr %22, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #4, !srcloc !13
  br label %24

24:                                               ; preds = %10, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mixer_disable_vblank(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, -3
  store i32 %6, ptr %4, align 4
  %7 = load volatile i32, ptr %4, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr i8, ptr %12, i32 12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %15 = or i32 %14, 2048
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %16 = load ptr, ptr %11, align 8
  %17 = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #4, !srcloc !13
  %18 = load ptr, ptr %11, align 8
  %19 = getelementptr i8, ptr %18, i32 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %21 = and i32 %20, -2049
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %22 = load ptr, ptr %11, align 8
  %23 = getelementptr i8, ptr %22, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #4, !srcloc !13
  br label %24

24:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mixer_mode_valid(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 1
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 6
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = getelementptr inbounds %struct.mixer_context, ptr %4, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @drm_mode_vrefresh(ptr noundef %1) #4
  %14 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 11
  %15 = load i32, ptr %14, align 4
  %16 = lshr i32 %15, 4
  %17 = and i32 %16, 1
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %12, i32 noundef 4, ptr noundef nonnull @.str.42, i32 noundef %7, i32 noundef %10, i32 noundef %13, i32 noundef %17) #4
  %18 = getelementptr inbounds %struct.mixer_context, ptr %4, i32 0, i32 17
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %54, label %21

21:                                               ; preds = %2
  %22 = add i16 %6, -464
  %23 = icmp ult i16 %22, 257
  %24 = icmp ugt i16 %9, 260
  %25 = select i1 %23, i1 %24, i1 false
  %26 = icmp ult i16 %9, 577
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %54, label %28

28:                                               ; preds = %21
  %29 = add i16 %6, -1024
  %30 = icmp ult i16 %29, 257
  %31 = icmp ugt i16 %9, 575
  %32 = select i1 %30, i1 %31, i1 false
  %33 = icmp ult i16 %9, 721
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %54, label %35

35:                                               ; preds = %28
  %36 = add i16 %6, -1664
  %37 = icmp ult i16 %36, 257
  %38 = icmp ugt i16 %9, 935
  %39 = select i1 %37, i1 %38, i1 false
  %40 = icmp ult i16 %9, 1081
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %54, label %42

42:                                               ; preds = %35
  %43 = icmp eq i16 %6, 1024
  %44 = icmp eq i16 %9, 768
  %45 = select i1 %43, i1 %44, i1 false
  %46 = icmp eq i16 %6, 1366
  %47 = select i1 %46, i1 %44, i1 false
  %48 = select i1 %45, i1 true, i1 %47
  br i1 %48, label %54, label %49

49:                                               ; preds = %42
  %50 = icmp eq i16 %6, 1280
  %51 = icmp eq i16 %9, 1024
  %52 = select i1 %50, i1 %51, i1 false
  %53 = select i1 %52, i32 0, i32 -2
  br label %54

54:                                               ; preds = %49, %42, %35, %28, %21, %2
  %55 = phi i32 [ 0, %2 ], [ 0, %35 ], [ 0, %28 ], [ 0, %21 ], [ 0, %42 ], [ %53, %49 ]
  ret i32 %55
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @mixer_mode_fixup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 6
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 11
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mixer_context, ptr %5, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, -5
  %17 = lshr i32 %13, 2
  %18 = and i32 %17, 4
  %19 = or i32 %16, %18
  store i32 %19, ptr %14, align 4
  %20 = getelementptr inbounds %struct.mixer_context, ptr %5, i32 0, i32 17
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %66, label %23

23:                                               ; preds = %3
  %24 = icmp ugt i16 %7, 720
  br i1 %24, label %56, label %25

25:                                               ; preds = %23
  %26 = icmp ugt i16 %10, 480
  br i1 %26, label %54, label %27

27:                                               ; preds = %64, %60, %58, %54, %25
  %28 = phi i32 [ 0, %25 ], [ 1, %54 ], [ 2, %58 ], [ 3, %64 ], [ 3, %60 ]
  %29 = phi i32 [ 720, %25 ], [ 720, %54 ], [ 1280, %58 ], [ 1920, %64 ], [ 1920, %60 ]
  %30 = phi i32 [ 480, %25 ], [ 576, %54 ], [ 720, %58 ], [ 1080, %64 ], [ 1080, %60 ]
  %31 = getelementptr [4 x %struct.anon.77], ptr @mixer_mode_fixup.modes, i32 0, i32 %28, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.mixer_context, ptr %5, i32 0, i32 18
  store i32 %32, ptr %33, align 8
  %34 = icmp ugt i32 %29, %8
  %35 = icmp ugt i32 %30, %11
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %37, label %66

37:                                               ; preds = %27
  %38 = trunc i32 %29 to i16
  %39 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 1
  store i16 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 2
  store i16 %38, ptr %40, align 2
  %41 = getelementptr [4 x %struct.anon.77], ptr @mixer_mode_fixup.modes, i32 0, i32 %28, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = trunc i32 %42 to i16
  %44 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 3
  store i16 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 4
  store i16 %43, ptr %45, align 2
  %46 = trunc i32 %30 to i16
  %47 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 6
  store i16 %46, ptr %47, align 2
  %48 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 7
  store i16 %46, ptr %48, align 4
  %49 = getelementptr [4 x %struct.anon.77], ptr @mixer_mode_fixup.modes, i32 0, i32 %28, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = trunc i32 %50 to i16
  %52 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 8
  store i16 %51, ptr %52, align 2
  %53 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 9
  store i16 %51, ptr %53, align 4
  br label %66

54:                                               ; preds = %25
  %55 = icmp ugt i16 %10, 576
  br i1 %55, label %58, label %27

56:                                               ; preds = %23
  %57 = icmp ugt i16 %7, 1280
  br i1 %57, label %60, label %58

58:                                               ; preds = %56, %54
  %59 = icmp ugt i16 %10, 720
  br i1 %59, label %64, label %27

60:                                               ; preds = %56
  %61 = icmp ugt i16 %7, 1920
  %62 = icmp ugt i16 %10, 1080
  %63 = select i1 %61, i1 true, i1 %62
  br i1 %63, label %66, label %27

64:                                               ; preds = %58
  %65 = icmp ugt i16 %10, 1080
  br i1 %65, label %66, label %27

66:                                               ; preds = %64, %60, %37, %27, %3
  %67 = phi i1 [ true, %3 ], [ true, %37 ], [ true, %27 ], [ false, %64 ], [ false, %60 ]
  ret i1 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mixer_atomic_begin(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %68, label %8

8:                                                ; preds = %1
  %9 = tail call i64 @ktime_get() #4
  %10 = add i64 %9, 100000000
  %11 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 8
  %12 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 17
  %13 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 9
  br label %14

14:                                               ; preds = %57, %8
  %15 = load i32, ptr %12, align 4
  %16 = add i32 %15, -1
  %17 = icmp ult i32 %16, 2
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load ptr, ptr %11, align 8
  %20 = getelementptr i8, ptr %19, i32 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %22 = and i32 %21, 1610612736
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %63, label %57

24:                                               ; preds = %14
  %25 = load volatile i32, ptr %4, align 4
  %26 = and i32 %25, 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %13, align 4
  %30 = getelementptr i8, ptr %29, i32 8
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %28, %24
  %34 = load ptr, ptr %11, align 8
  %35 = getelementptr i8, ptr %34, i32 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %37 = load ptr, ptr %11, align 8
  %38 = getelementptr i8, ptr %37, i32 8196
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %33
  %42 = load ptr, ptr %11, align 8
  %43 = getelementptr i8, ptr %42, i32 36
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %45 = load ptr, ptr %11, align 8
  %46 = getelementptr i8, ptr %45, i32 8228
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %48 = icmp eq i32 %44, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %41
  %50 = load ptr, ptr %11, align 8
  %51 = getelementptr i8, ptr %50, i32 68
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %53 = load ptr, ptr %11, align 8
  %54 = getelementptr i8, ptr %53, i32 8260
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %49, %41, %33, %28, %18
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %58 = tail call i64 @ktime_get() #4
  %59 = icmp sgt i64 %58, %10
  br i1 %59, label %60, label %14

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.43) #5
  br label %63

63:                                               ; preds = %60, %49, %18
  %64 = load ptr, ptr %11, align 8
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %66 = and i32 %65, -5
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %67 = load ptr, ptr %11, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %66) #4, !srcloc !13
  br label %68

68:                                               ; preds = %63, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mixer_update_plane(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mixer_context, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.exynos_drm_plane, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %6, i32 noundef 4, ptr noundef nonnull @.str.44, i32 noundef %8) #4
  %9 = getelementptr inbounds %struct.mixer_context, ptr %4, i32 0, i32 6
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %378, label %13

13:                                               ; preds = %2
  %14 = load i32, ptr %7, align 4
  %15 = icmp eq i32 %14, 2
  %16 = getelementptr inbounds %struct.drm_plane, ptr %1, i32 0, i32 19
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.drm_plane_state, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.drm_plane_state, ptr %17, i32 0, i32 16
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.drm_framebuffer, ptr %19, i32 0, i32 4
  %23 = load ptr, ptr %22, align 8
  br i1 %15, label %24, label %271

24:                                               ; preds = %13
  %25 = load i32, ptr %23, align 4
  %26 = icmp eq i32 %25, 825382478
  %27 = getelementptr inbounds %struct.drm_framebuffer, ptr %19, i32 0, i32 8
  %28 = load i64, ptr %27, align 8
  %29 = icmp eq i64 %28, 288230376151711745
  %30 = tail call i32 @exynos_drm_fb_dma_addr(ptr noundef %19, i32 noundef 0) #4
  %31 = tail call i32 @exynos_drm_fb_dma_addr(ptr noundef %19, i32 noundef 1) #4
  %32 = load volatile i32, ptr %9, align 4
  %33 = and i32 %32, 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %24
  br i1 %29, label %36, label %39

36:                                               ; preds = %35
  %37 = add i32 %30, 64
  %38 = add i32 %31, 64
  br label %46

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.drm_framebuffer, ptr %19, i32 0, i32 6
  %41 = load i32, ptr %40, align 8
  %42 = add i32 %41, %30
  %43 = getelementptr %struct.drm_framebuffer, ptr %19, i32 0, i32 6, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, %31
  br label %46

46:                                               ; preds = %39, %36, %24
  %47 = phi i32 [ %37, %36 ], [ %42, %39 ], [ 0, %24 ]
  %48 = phi i32 [ %38, %36 ], [ %45, %39 ], [ 0, %24 ]
  %49 = getelementptr inbounds %struct.mixer_context, ptr %4, i32 0, i32 10
  %50 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %49) #4
  %51 = load volatile i32, ptr %9, align 4
  %52 = getelementptr inbounds %struct.mixer_context, ptr %4, i32 0, i32 9
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i8, ptr %53, i32 16
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  %56 = shl i32 %51, 3
  %57 = and i32 %56, 32
  %58 = and i32 %55, -33
  %59 = or i32 %58, %57
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  %60 = load ptr, ptr %52, align 4
  %61 = getelementptr i8, ptr %60, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %59) #4, !srcloc !13
  %62 = select i1 %26, i32 64, i32 0
  %63 = select i1 %29, i32 16, i32 0
  %64 = or i32 %63, %62
  %65 = load ptr, ptr %52, align 4
  %66 = getelementptr i8, ptr %65, i32 16
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  %68 = and i32 %67, -81
  %69 = or i32 %64, %68
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  %70 = load ptr, ptr %52, align 4
  %71 = getelementptr i8, ptr %70, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %69) #4, !srcloc !13
  %72 = getelementptr inbounds %struct.drm_framebuffer, ptr %19, i32 0, i32 6
  %73 = load i32, ptr %72, align 8
  %74 = shl i32 %73, 16
  %75 = and i32 %74, 1073676288
  %76 = getelementptr inbounds %struct.drm_framebuffer, ptr %19, i32 0, i32 10
  %77 = load i32, ptr %76, align 4
  %78 = and i32 %77, 16383
  %79 = or i32 %75, %78
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %80 = load ptr, ptr %52, align 4
  %81 = getelementptr i8, ptr %80, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %79) #4, !srcloc !13
  %82 = getelementptr %struct.drm_framebuffer, ptr %19, i32 0, i32 6, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = shl i32 %83, 16
  %85 = and i32 %84, 1073676288
  %86 = load i32, ptr %76, align 4
  %87 = lshr i32 %86, 1
  %88 = and i32 %87, 16383
  %89 = or i32 %88, %85
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %90 = load ptr, ptr %52, align 4
  %91 = getelementptr i8, ptr %90, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %89) #4, !srcloc !13
  %92 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %17, i32 0, i32 2
  %93 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %17, i32 0, i32 2, i32 2
  %94 = load i32, ptr %93, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %95 = load ptr, ptr %52, align 4
  %96 = getelementptr i8, ptr %95, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %94) #4, !srcloc !13
  %97 = load i32, ptr %92, align 4
  %98 = shl i32 %97, 4
  %99 = and i32 %98, 32752
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %100 = load ptr, ptr %52, align 4
  %101 = getelementptr i8, ptr %100, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %99) #4, !srcloc !13
  %102 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %17, i32 0, i32 1
  %103 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %17, i32 0, i32 1, i32 2
  %104 = load i32, ptr %103, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %105 = load ptr, ptr %52, align 4
  %106 = getelementptr i8, ptr %105, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %104) #4, !srcloc !13
  %107 = load i32, ptr %102, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %108 = load ptr, ptr %52, align 4
  %109 = getelementptr i8, ptr %108, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %107) #4, !srcloc !13
  %110 = load volatile i32, ptr %9, align 4
  %111 = and i32 %110, 4
  %112 = icmp eq i32 %111, 0
  %113 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %17, i32 0, i32 2, i32 3
  %114 = load i32, ptr %113, align 4
  br i1 %112, label %134, label %115

115:                                              ; preds = %46
  %116 = lshr i32 %114, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %117 = load ptr, ptr %52, align 4
  %118 = getelementptr i8, ptr %117, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %116) #4, !srcloc !13
  %119 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %17, i32 0, i32 2, i32 1
  %120 = load i32, ptr %119, align 4
  %121 = lshr i32 %120, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %122 = load ptr, ptr %52, align 4
  %123 = getelementptr i8, ptr %122, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 %121) #4, !srcloc !13
  %124 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %17, i32 0, i32 1, i32 3
  %125 = load i32, ptr %124, align 4
  %126 = lshr i32 %125, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %127 = load ptr, ptr %52, align 4
  %128 = getelementptr i8, ptr %127, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %126) #4, !srcloc !13
  %129 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %17, i32 0, i32 1, i32 1
  %130 = load i32, ptr %129, align 4
  %131 = lshr i32 %130, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %132 = load ptr, ptr %52, align 4
  %133 = getelementptr i8, ptr %132, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %131) #4, !srcloc !13
  br label %149

134:                                              ; preds = %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %135 = load ptr, ptr %52, align 4
  %136 = getelementptr i8, ptr %135, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 %114) #4, !srcloc !13
  %137 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %17, i32 0, i32 2, i32 1
  %138 = load i32, ptr %137, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %139 = load ptr, ptr %52, align 4
  %140 = getelementptr i8, ptr %139, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %140, i32 %138) #4, !srcloc !13
  %141 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %17, i32 0, i32 1, i32 3
  %142 = load i32, ptr %141, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %143 = load ptr, ptr %52, align 4
  %144 = getelementptr i8, ptr %143, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %142) #4, !srcloc !13
  %145 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %17, i32 0, i32 1, i32 1
  %146 = load i32, ptr %145, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %147 = load ptr, ptr %52, align 4
  %148 = getelementptr i8, ptr %147, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %148, i32 %146) #4, !srcloc !13
  br label %149

149:                                              ; preds = %134, %115
  %150 = add i32 %21, 1
  %151 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %17, i32 0, i32 3
  %152 = load i32, ptr %151, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %153 = load ptr, ptr %52, align 4
  %154 = getelementptr i8, ptr %153, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 %152) #4, !srcloc !13
  %155 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %17, i32 0, i32 4
  %156 = load i32, ptr %155, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %157 = load ptr, ptr %52, align 4
  %158 = getelementptr i8, ptr %157, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 %156) #4, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %159 = load ptr, ptr %52, align 4
  %160 = getelementptr i8, ptr %159, i32 972
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 1) #4, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %161 = load ptr, ptr %52, align 4
  %162 = getelementptr i8, ptr %161, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 %30) #4, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %163 = load ptr, ptr %52, align 4
  %164 = getelementptr i8, ptr %163, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %164, i32 %47) #4, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %165 = load ptr, ptr %52, align 4
  %166 = getelementptr i8, ptr %165, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %166, i32 %31) #4, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %167 = load ptr, ptr %52, align 4
  %168 = getelementptr i8, ptr %167, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %168, i32 %48) #4, !srcloc !13
  %169 = load i32, ptr %7, align 4
  tail call fastcc void @mixer_cfg_layer(ptr noundef %4, i32 noundef %169, i32 noundef %150, i1 noundef zeroext true) #4
  %170 = getelementptr inbounds %struct.drm_plane_state, ptr %17, i32 0, i32 12
  %171 = load i16, ptr %170, align 4
  %172 = icmp eq i16 %171, -1
  %173 = lshr i16 %171, 8
  %174 = zext i16 %173 to i32
  %175 = or i32 %174, 65536
  %176 = select i1 %172, i32 0, i32 %175
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %177 = getelementptr inbounds %struct.mixer_context, ptr %4, i32 0, i32 8
  %178 = load ptr, ptr %177, align 8
  %179 = getelementptr i8, ptr %178, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %179, i32 %176) #4, !srcloc !13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %49, i32 noundef %50) #4
  tail call fastcc void @mixer_regs_dump(ptr noundef %4) #4
  %180 = load ptr, ptr %5, align 4
  %181 = load ptr, ptr %52, align 4
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %181) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !26
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %180, i32 noundef 4, ptr noundef nonnull @.str.45, i32 noundef %182) #4
  %183 = load ptr, ptr %5, align 4
  %184 = load ptr, ptr %52, align 4
  %185 = getelementptr i8, ptr %184, i32 4
  %186 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %185) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !27
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %183, i32 noundef 4, ptr noundef nonnull @.str.46, i32 noundef %186) #4
  %187 = load ptr, ptr %5, align 4
  %188 = load ptr, ptr %52, align 4
  %189 = getelementptr i8, ptr %188, i32 8
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %189) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !28
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %187, i32 noundef 4, ptr noundef nonnull @.str.47, i32 noundef %190) #4
  %191 = load ptr, ptr %5, align 4
  %192 = load ptr, ptr %52, align 4
  %193 = getelementptr i8, ptr %192, i32 12
  %194 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %193) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !29
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %191, i32 noundef 4, ptr noundef nonnull @.str.48, i32 noundef %194) #4
  %195 = load ptr, ptr %5, align 4
  %196 = load ptr, ptr %52, align 4
  %197 = getelementptr i8, ptr %196, i32 16
  %198 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %197) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !30
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %195, i32 noundef 4, ptr noundef nonnull @.str.49, i32 noundef %198) #4
  %199 = load ptr, ptr %5, align 4
  %200 = load ptr, ptr %52, align 4
  %201 = getelementptr i8, ptr %200, i32 20
  %202 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %201) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !31
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %199, i32 noundef 4, ptr noundef nonnull @.str.50, i32 noundef %202) #4
  %203 = load ptr, ptr %5, align 4
  %204 = load ptr, ptr %52, align 4
  %205 = getelementptr i8, ptr %204, i32 24
  %206 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %205) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !32
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %203, i32 noundef 4, ptr noundef nonnull @.str.51, i32 noundef %206) #4
  %207 = load ptr, ptr %5, align 4
  %208 = load ptr, ptr %52, align 4
  %209 = getelementptr i8, ptr %208, i32 28
  %210 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %209) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !33
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %207, i32 noundef 4, ptr noundef nonnull @.str.52, i32 noundef %210) #4
  %211 = load ptr, ptr %5, align 4
  %212 = load ptr, ptr %52, align 4
  %213 = getelementptr i8, ptr %212, i32 40
  %214 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %213) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !34
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %211, i32 noundef 4, ptr noundef nonnull @.str.53, i32 noundef %214) #4
  %215 = load ptr, ptr %5, align 4
  %216 = load ptr, ptr %52, align 4
  %217 = getelementptr i8, ptr %216, i32 44
  %218 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %217) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !35
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %215, i32 noundef 4, ptr noundef nonnull @.str.54, i32 noundef %218) #4
  %219 = load ptr, ptr %5, align 4
  %220 = load ptr, ptr %52, align 4
  %221 = getelementptr i8, ptr %220, i32 48
  %222 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %221) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !36
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %219, i32 noundef 4, ptr noundef nonnull @.str.55, i32 noundef %222) #4
  %223 = load ptr, ptr %5, align 4
  %224 = load ptr, ptr %52, align 4
  %225 = getelementptr i8, ptr %224, i32 52
  %226 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %225) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !37
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %223, i32 noundef 4, ptr noundef nonnull @.str.56, i32 noundef %226) #4
  %227 = load ptr, ptr %5, align 4
  %228 = load ptr, ptr %52, align 4
  %229 = getelementptr i8, ptr %228, i32 972
  %230 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %229) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !38
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %227, i32 noundef 4, ptr noundef nonnull @.str.57, i32 noundef %230) #4
  %231 = load ptr, ptr %5, align 4
  %232 = load ptr, ptr %52, align 4
  %233 = getelementptr i8, ptr %232, i32 68
  %234 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %233) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !39
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %231, i32 noundef 4, ptr noundef nonnull @.str.58, i32 noundef %234) #4
  %235 = load ptr, ptr %5, align 4
  %236 = load ptr, ptr %52, align 4
  %237 = getelementptr i8, ptr %236, i32 72
  %238 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %237) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !40
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %235, i32 noundef 4, ptr noundef nonnull @.str.59, i32 noundef %238) #4
  %239 = load ptr, ptr %5, align 4
  %240 = load ptr, ptr %52, align 4
  %241 = getelementptr i8, ptr %240, i32 76
  %242 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %241) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !41
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %239, i32 noundef 4, ptr noundef nonnull @.str.60, i32 noundef %242) #4
  %243 = load ptr, ptr %5, align 4
  %244 = load ptr, ptr %52, align 4
  %245 = getelementptr i8, ptr %244, i32 80
  %246 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %245) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !42
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %243, i32 noundef 4, ptr noundef nonnull @.str.61, i32 noundef %246) #4
  %247 = load ptr, ptr %5, align 4
  %248 = load ptr, ptr %52, align 4
  %249 = getelementptr i8, ptr %248, i32 84
  %250 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %249) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !43
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %247, i32 noundef 4, ptr noundef nonnull @.str.62, i32 noundef %250) #4
  %251 = load ptr, ptr %5, align 4
  %252 = load ptr, ptr %52, align 4
  %253 = getelementptr i8, ptr %252, i32 88
  %254 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %253) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !44
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %251, i32 noundef 4, ptr noundef nonnull @.str.63, i32 noundef %254) #4
  %255 = load ptr, ptr %5, align 4
  %256 = load ptr, ptr %52, align 4
  %257 = getelementptr i8, ptr %256, i32 92
  %258 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %257) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !45
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %255, i32 noundef 4, ptr noundef nonnull @.str.64, i32 noundef %258) #4
  %259 = load ptr, ptr %5, align 4
  %260 = load ptr, ptr %52, align 4
  %261 = getelementptr i8, ptr %260, i32 96
  %262 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %261) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !46
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %259, i32 noundef 4, ptr noundef nonnull @.str.65, i32 noundef %262) #4
  %263 = load ptr, ptr %5, align 4
  %264 = load ptr, ptr %52, align 4
  %265 = getelementptr i8, ptr %264, i32 100
  %266 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %265) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !47
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %263, i32 noundef 4, ptr noundef nonnull @.str.66, i32 noundef %266) #4
  %267 = load ptr, ptr %5, align 4
  %268 = load ptr, ptr %52, align 4
  %269 = getelementptr i8, ptr %268, i32 104
  %270 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %269) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !48
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %267, i32 noundef 4, ptr noundef nonnull @.str.67, i32 noundef %270) #4
  br label %378

271:                                              ; preds = %13
  %272 = getelementptr inbounds %struct.drm_format_info, ptr %23, i32 0, i32 8
  %273 = load i8, ptr %272, align 4, !range !8
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %279, label %275

275:                                              ; preds = %271
  %276 = getelementptr inbounds %struct.drm_plane_state, ptr %17, i32 0, i32 13
  %277 = load i16, ptr %276, align 2
  %278 = zext i16 %277 to i32
  br label %279

279:                                              ; preds = %275, %271
  %280 = phi i32 [ %278, %275 ], [ 2, %271 ]
  %281 = load i32, ptr %23, align 4
  switch i32 %281, label %284 [
    i32 842093144, label %285
    i32 842093121, label %285
    i32 892424792, label %282
    i32 892424769, label %282
    i32 909199186, label %283
  ]

282:                                              ; preds = %279, %279
  br label %285

283:                                              ; preds = %279
  br label %285

284:                                              ; preds = %279
  br label %285

285:                                              ; preds = %284, %283, %282, %279, %279
  %286 = phi i32 [ 1792, %284 ], [ 1024, %283 ], [ 1280, %282 ], [ 1536, %279 ], [ 1536, %279 ]
  %287 = add i32 %21, 1
  %288 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %17, i32 0, i32 3
  %289 = load i32, ptr %288, align 4
  %290 = icmp eq i32 %289, 32768
  %291 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %17, i32 0, i32 4
  %292 = load i32, ptr %291, align 4
  %293 = icmp eq i32 %292, 32768
  %294 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %17, i32 0, i32 1
  %295 = load i32, ptr %294, align 4
  %296 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %17, i32 0, i32 1, i32 1
  %297 = load i32, ptr %296, align 4
  %298 = tail call i32 @exynos_drm_fb_dma_addr(ptr noundef %19, i32 noundef 0) #4
  %299 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %17, i32 0, i32 2
  %300 = load i32, ptr %299, align 4
  %301 = load ptr, ptr %22, align 8
  %302 = getelementptr inbounds %struct.drm_format_info, ptr %301, i32 0, i32 3
  %303 = load i8, ptr %302, align 2
  %304 = zext i8 %303 to i32
  %305 = mul i32 %300, %304
  %306 = add i32 %305, %298
  %307 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %17, i32 0, i32 2, i32 1
  %308 = load i32, ptr %307, align 4
  %309 = getelementptr inbounds %struct.drm_framebuffer, ptr %19, i32 0, i32 6
  %310 = load i32, ptr %309, align 8
  %311 = mul i32 %310, %308
  %312 = add i32 %306, %311
  %313 = getelementptr inbounds %struct.mixer_context, ptr %4, i32 0, i32 10
  %314 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %313) #4
  %315 = shl i32 %14, 5
  %316 = add i32 %315, 32
  %317 = getelementptr inbounds %struct.mixer_context, ptr %4, i32 0, i32 8
  %318 = load ptr, ptr %317, align 8
  %319 = getelementptr i8, ptr %318, i32 %316
  %320 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %319) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %321 = and i32 %320, -3841
  %322 = or i32 %321, %286
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %323 = load ptr, ptr %317, align 8
  %324 = getelementptr i8, ptr %323, i32 %316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %324, i32 %322) #4, !srcloc !13
  %325 = add i32 %315, 40
  %326 = load i32, ptr %309, align 8
  %327 = load ptr, ptr %22, align 8
  %328 = getelementptr inbounds %struct.drm_format_info, ptr %327, i32 0, i32 3
  %329 = load i8, ptr %328, align 2
  %330 = zext i8 %329 to i32
  %331 = udiv i32 %326, %330
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %332 = load ptr, ptr %317, align 8
  %333 = getelementptr i8, ptr %332, i32 %325
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %333, i32 %331) #4, !srcloc !13
  %334 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %17, i32 0, i32 2, i32 2
  %335 = load i32, ptr %334, align 4
  %336 = shl i32 %335, 16
  %337 = and i32 %336, 134152192
  %338 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %17, i32 0, i32 2, i32 3
  %339 = load i32, ptr %338, align 4
  %340 = and i32 %339, 2047
  %341 = select i1 %290, i32 268435456, i32 0
  %342 = select i1 %293, i32 4096, i32 0
  %343 = or i32 %342, %341
  %344 = or i32 %343, %340
  %345 = or i32 %344, %337
  %346 = add i32 %315, 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %347 = load ptr, ptr %317, align 8
  %348 = getelementptr i8, ptr %347, i32 %346
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %348, i32 %345) #4, !srcloc !13
  %349 = shl i32 %295, 16
  %350 = and i32 %349, 134152192
  %351 = and i32 %297, 2047
  %352 = or i32 %350, %351
  %353 = add i32 %315, 52
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %354 = load ptr, ptr %317, align 8
  %355 = getelementptr i8, ptr %354, i32 %353
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %355, i32 %352) #4, !srcloc !13
  %356 = add i32 %315, 36
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %357 = load ptr, ptr %317, align 8
  %358 = getelementptr i8, ptr %357, i32 %356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %358, i32 %312) #4, !srcloc !13
  tail call fastcc void @mixer_cfg_layer(ptr noundef %4, i32 noundef %14, i32 noundef %287, i1 noundef zeroext true) #4
  %359 = getelementptr inbounds %struct.drm_plane_state, ptr %17, i32 0, i32 12
  %360 = load i16, ptr %359, align 4
  %361 = lshr i16 %360, 8
  %362 = zext i16 %361 to i32
  %363 = icmp eq i32 %280, 1
  %364 = select i1 %363, i32 2162688, i32 3211264
  %365 = icmp eq i32 %280, 2
  %366 = select i1 %365, i32 2097152, i32 %364
  %367 = icmp eq i16 %360, -1
  %368 = or i32 %366, %362
  %369 = or i32 %368, 131072
  %370 = select i1 %367, i32 %366, i32 %369
  %371 = load ptr, ptr %317, align 8
  %372 = getelementptr i8, ptr %371, i32 %316
  %373 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %372) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %374 = and i32 %373, -3342592
  %375 = or i32 %370, %374
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %376 = load ptr, ptr %317, align 8
  %377 = getelementptr i8, ptr %376, i32 %316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %377, i32 %375) #4, !srcloc !13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %313, i32 noundef %314) #4
  tail call fastcc void @mixer_regs_dump(ptr noundef %4) #4
  br label %378

378:                                              ; preds = %285, %149, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mixer_disable_plane(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mixer_context, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.exynos_drm_plane, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %6, i32 noundef 4, ptr noundef nonnull @.str.44, i32 noundef %8) #4
  %9 = getelementptr inbounds %struct.mixer_context, ptr %4, i32 0, i32 6
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.mixer_context, ptr %4, i32 0, i32 10
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #4
  %16 = load i32, ptr %7, align 4
  tail call fastcc void @mixer_cfg_layer(ptr noundef %4, i32 noundef %16, i32 noundef 0, i1 noundef zeroext false)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #4
  br label %17

17:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mixer_atomic_flush(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %35, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 17
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -1
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 8
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr i8, ptr %15, i32 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %18 = or i32 %17, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %19 = load ptr, ptr %14, align 8
  %20 = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #4, !srcloc !13
  br label %21

21:                                               ; preds = %13, %8
  %22 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 8
  %23 = load ptr, ptr %22, align 8
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %25 = or i32 %24, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %26 = load ptr, ptr %22, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %25) #4, !srcloc !13
  %27 = load volatile i32, ptr %4, align 4
  %28 = and i32 %27, 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %31 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 9
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 1) #4, !srcloc !13
  br label %34

34:                                               ; preds = %30, %21
  tail call void @exynos_crtc_handle_event(ptr noundef %0) #4
  br label %35

35:                                               ; preds = %34, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_default_rgb_quant_range(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mixer_regs_dump(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mixer_context, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mixer_context, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !49
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %3, i32 noundef 4, ptr noundef nonnull @.str.24, i32 noundef %6) #4
  %7 = load ptr, ptr %2, align 4
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr i8, ptr %8, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !50
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %7, i32 noundef 4, ptr noundef nonnull @.str.25, i32 noundef %10) #4
  %11 = load ptr, ptr %2, align 4
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr i8, ptr %12, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !51
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %11, i32 noundef 4, ptr noundef nonnull @.str.26, i32 noundef %14) #4
  %15 = load ptr, ptr %2, align 4
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr i8, ptr %16, i32 12
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !52
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %15, i32 noundef 4, ptr noundef nonnull @.str.27, i32 noundef %18) #4
  %19 = load ptr, ptr %2, align 4
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr i8, ptr %20, i32 16
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !53
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %19, i32 noundef 4, ptr noundef nonnull @.str.28, i32 noundef %22) #4
  %23 = load ptr, ptr %2, align 4
  %24 = load ptr, ptr %4, align 8
  %25 = getelementptr i8, ptr %24, i32 20
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !54
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %23, i32 noundef 4, ptr noundef nonnull @.str.29, i32 noundef %26) #4
  %27 = load ptr, ptr %2, align 4
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr i8, ptr %28, i32 32
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !55
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %27, i32 noundef 4, ptr noundef nonnull @.str.30, i32 noundef %30) #4
  %31 = load ptr, ptr %2, align 4
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr i8, ptr %32, i32 36
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !56
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %31, i32 noundef 4, ptr noundef nonnull @.str.31, i32 noundef %34) #4
  %35 = load ptr, ptr %2, align 4
  %36 = load ptr, ptr %4, align 8
  %37 = getelementptr i8, ptr %36, i32 40
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !57
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %35, i32 noundef 4, ptr noundef nonnull @.str.32, i32 noundef %38) #4
  %39 = load ptr, ptr %2, align 4
  %40 = load ptr, ptr %4, align 8
  %41 = getelementptr i8, ptr %40, i32 48
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !58
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %39, i32 noundef 4, ptr noundef nonnull @.str.33, i32 noundef %42) #4
  %43 = load ptr, ptr %2, align 4
  %44 = load ptr, ptr %4, align 8
  %45 = getelementptr i8, ptr %44, i32 44
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !59
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %43, i32 noundef 4, ptr noundef nonnull @.str.34, i32 noundef %46) #4
  %47 = load ptr, ptr %2, align 4
  %48 = load ptr, ptr %4, align 8
  %49 = getelementptr i8, ptr %48, i32 52
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !60
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %47, i32 noundef 4, ptr noundef nonnull @.str.35, i32 noundef %50) #4
  %51 = load ptr, ptr %2, align 4
  %52 = load ptr, ptr %4, align 8
  %53 = getelementptr i8, ptr %52, i32 64
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !61
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %51, i32 noundef 4, ptr noundef nonnull @.str.36, i32 noundef %54) #4
  %55 = load ptr, ptr %2, align 4
  %56 = load ptr, ptr %4, align 8
  %57 = getelementptr i8, ptr %56, i32 68
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !62
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %55, i32 noundef 4, ptr noundef nonnull @.str.37, i32 noundef %58) #4
  %59 = load ptr, ptr %2, align 4
  %60 = load ptr, ptr %4, align 8
  %61 = getelementptr i8, ptr %60, i32 72
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !63
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %59, i32 noundef 4, ptr noundef nonnull @.str.38, i32 noundef %62) #4
  %63 = load ptr, ptr %2, align 4
  %64 = load ptr, ptr %4, align 8
  %65 = getelementptr i8, ptr %64, i32 80
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !64
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %63, i32 noundef 4, ptr noundef nonnull @.str.39, i32 noundef %66) #4
  %67 = load ptr, ptr %2, align 4
  %68 = load ptr, ptr %4, align 8
  %69 = getelementptr i8, ptr %68, i32 76
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !65
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %67, i32 noundef 4, ptr noundef nonnull @.str.40, i32 noundef %70) #4
  %71 = load ptr, ptr %2, align 4
  %72 = load ptr, ptr %4, align 8
  %73 = getelementptr i8, ptr %72, i32 84
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !66
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %71, i32 noundef 4, ptr noundef nonnull @.str.41, i32 noundef %74) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_drm_fb_dma_addr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mixer_cfg_layer(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  switch i32 %1, label %73 [
    i32 0, label %5
    i32 1, label %24
    i32 2, label %43
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.mixer_context, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %10 = select i1 %3, i32 16, i32 0
  %11 = and i32 %9, -17
  %12 = or i32 %11, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %13 = load ptr, ptr %6, align 8
  %14 = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #4, !srcloc !13
  %15 = shl i32 %2, 4
  %16 = and i32 %15, 240
  %17 = load ptr, ptr %6, align 8
  %18 = getelementptr i8, ptr %17, i32 16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %20 = and i32 %19, -241
  %21 = or i32 %20, %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %22 = load ptr, ptr %6, align 8
  %23 = getelementptr i8, ptr %22, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #4, !srcloc !13
  br label %73

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.mixer_context, ptr %0, i32 0, i32 8
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr i8, ptr %26, i32 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %29 = select i1 %3, i32 32, i32 0
  %30 = and i32 %28, -33
  %31 = or i32 %30, %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %32 = load ptr, ptr %25, align 8
  %33 = getelementptr i8, ptr %32, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #4, !srcloc !13
  %34 = shl i32 %2, 8
  %35 = and i32 %34, 3840
  %36 = load ptr, ptr %25, align 8
  %37 = getelementptr i8, ptr %36, i32 16
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %39 = and i32 %38, -3841
  %40 = or i32 %39, %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %41 = load ptr, ptr %25, align 8
  %42 = getelementptr i8, ptr %41, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #4, !srcloc !13
  br label %73

43:                                               ; preds = %4
  %44 = getelementptr inbounds %struct.mixer_context, ptr %0, i32 0, i32 6
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %45, 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %73, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.mixer_context, ptr %0, i32 0, i32 9
  %50 = load ptr, ptr %49, align 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  %52 = zext i1 %3 to i32
  %53 = and i32 %51, -2
  %54 = or i32 %53, %52
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  %55 = load ptr, ptr %49, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %54) #4, !srcloc !13
  %56 = getelementptr inbounds %struct.mixer_context, ptr %0, i32 0, i32 8
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr i8, ptr %57, i32 4
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %60 = select i1 %3, i32 8, i32 0
  %61 = and i32 %59, -9
  %62 = or i32 %61, %60
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %63 = load ptr, ptr %56, align 8
  %64 = getelementptr i8, ptr %63, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %62) #4, !srcloc !13
  %65 = and i32 %2, 15
  %66 = load ptr, ptr %56, align 8
  %67 = getelementptr i8, ptr %66, i32 16
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %69 = and i32 %68, -16
  %70 = or i32 %69, %65
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %71 = load ptr, ptr %56, align 8
  %72 = getelementptr i8, ptr %71, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %70) #4, !srcloc !13
  br label %73

73:                                               ; preds = %48, %43, %24, %5, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_crtc_handle_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_drm_unregister_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_mixer_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #4
  tail call void @clk_unprepare(ptr noundef %5) #4
  %6 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #4
  tail call void @clk_unprepare(ptr noundef %7) #4
  %8 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 6
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 12
  %14 = load ptr, ptr %13, align 8
  tail call void @clk_disable(ptr noundef %14) #4
  tail call void @clk_unprepare(ptr noundef %14) #4
  %15 = load volatile i32, ptr %8, align 4
  %16 = and i32 %15, 16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 14
  %20 = load ptr, ptr %19, align 8
  tail call void @clk_disable(ptr noundef %20) #4
  tail call void @clk_unprepare(ptr noundef %20) #4
  br label %21

21:                                               ; preds = %18, %12, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_mixer_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #4
  br label %12

12:                                               ; preds = %11, %1
  %13 = phi i32 [ %6, %1 ], [ %9, %11 ]
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %17, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.68, i32 noundef %13) #4
  br label %66

18:                                               ; preds = %12, %8
  %19 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 13
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @clk_prepare(ptr noundef %20) #4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = tail call i32 @clk_enable(ptr noundef %20) #4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  tail call void @clk_unprepare(ptr noundef %20) #4
  br label %27

27:                                               ; preds = %26, %18
  %28 = phi i32 [ %21, %18 ], [ %24, %26 ]
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.69, i32 noundef %28) #4
  br label %66

31:                                               ; preds = %27, %23
  %32 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 6
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %33, 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %66, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 12
  %38 = load ptr, ptr %37, align 8
  %39 = tail call i32 @clk_prepare(ptr noundef %38) #4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = tail call i32 @clk_enable(ptr noundef %38) #4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  tail call void @clk_unprepare(ptr noundef %38) #4
  br label %45

45:                                               ; preds = %44, %36
  %46 = phi i32 [ %39, %36 ], [ %42, %44 ]
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.70, i32 noundef %46) #4
  br label %66

49:                                               ; preds = %45, %41
  %50 = load volatile i32, ptr %32, align 4
  %51 = and i32 %50, 16
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %66, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.mixer_context, ptr %3, i32 0, i32 14
  %55 = load ptr, ptr %54, align 8
  %56 = tail call i32 @clk_prepare(ptr noundef %55) #4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = tail call i32 @clk_enable(ptr noundef %55) #4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  tail call void @clk_unprepare(ptr noundef %55) #4
  br label %62

62:                                               ; preds = %61, %53
  %63 = phi i32 [ %56, %53 ], [ %59, %61 ]
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.71, i32 noundef %63) #4
  br label %66

66:                                               ; preds = %65, %62, %58, %49, %48, %31, %30, %15
  %67 = phi i32 [ %13, %15 ], [ %28, %30 ], [ %46, %48 ], [ %63, %65 ], [ 0, %49 ], [ 0, %62 ], [ 0, %31 ], [ 0, %58 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{i64 5422991}
!10 = !{i64 2155228545}
!11 = !{i64 2155227039}
!12 = !{i64 2155228906}
!13 = !{i64 5422573}
!14 = !{i64 2148911601}
!15 = !{i64 2148907425}
!16 = !{i64 2148907500, i64 2148907527, i64 2148907574, i64 2148907596, i64 2148907624, i64 2148907644}
!17 = !{i64 2148934604}
!18 = !{i64 2147975123}
!19 = !{i64 473433, i64 2147963404, i64 2147963430, i64 2147963477, i64 2147963499, i64 2147963527, i64 2147963547}
!20 = !{i64 460002, i64 460027, i64 460049, i64 460065, i64 460077, i64 460097, i64 460121, i64 460137, i64 460149}
!21 = !{i64 2147975249}
!22 = !{i64 2155229403}
!23 = !{i64 2155227397}
!24 = !{!"branch_weights", i32 1, i32 1}
!25 = !{i64 2155227888}
!26 = !{i64 2155245546}
!27 = !{i64 2155246152}
!28 = !{i64 2155246772}
!29 = !{i64 2155247382}
!30 = !{i64 2155247984}
!31 = !{i64 2155248598}
!32 = !{i64 2155249212}
!33 = !{i64 2155249832}
!34 = !{i64 2155250444}
!35 = !{i64 2155251056}
!36 = !{i64 2155251668}
!37 = !{i64 2155252280}
!38 = !{i64 2155252896}
!39 = !{i64 2155253518}
!40 = !{i64 2155254140}
!41 = !{i64 2155254752}
!42 = !{i64 2155255366}
!43 = !{i64 2155255988}
!44 = !{i64 2155256610}
!45 = !{i64 2155257222}
!46 = !{i64 2155257836}
!47 = !{i64 2155258444}
!48 = !{i64 2155259052}
!49 = !{i64 2155230160}
!50 = !{i64 2155230775}
!51 = !{i64 2155231396}
!52 = !{i64 2155232025}
!53 = !{i64 2155232652}
!54 = !{i64 2155233279}
!55 = !{i64 2155233912}
!56 = !{i64 2155234547}
!57 = !{i64 2155235182}
!58 = !{i64 2155235813}
!59 = !{i64 2155236446}
!60 = !{i64 2155237079}
!61 = !{i64 2155237712}
!62 = !{i64 2155238347}
!63 = !{i64 2155238982}
!64 = !{i64 2155239613}
!65 = !{i64 2155240246}
!66 = !{i64 2155244940}
